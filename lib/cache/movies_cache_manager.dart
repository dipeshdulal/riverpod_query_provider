import 'dart:convert';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:riverpod_advanced/infrastructure/api.dart';

const _cacheKey = "cachedMoviesData";
final moviesCacheManager = CacheManager(Config(_cacheKey));

extension CacheManagerExtensions on CacheManager {
  String resolvePath(String path) => Uri.parse(dioOptions.baseUrl).resolve(path).toString();
  Future<void> putJson(String path, Object? json) {
    return putFile(
      resolvePath(path),
      utf8.encode(jsonEncode(json)),
    );
  }

  Future<Object?> getJson(String path) async {
    final file = await getSingleFile(resolvePath(path));
    final fileBody = await file.readAsString();
    return jsonDecode(fileBody);
  }

  /// Return null when error
  Future<Object?> tryGetJson(String path) async {
    try {
      return await getJson(resolvePath(path));
    } catch (error, stackTrace) {
      Future.microtask(() => Error.throwWithStackTrace(error, stackTrace));
      return null;
    }
  }
}

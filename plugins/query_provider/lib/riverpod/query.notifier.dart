import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/api.state.dart';

class QueryNotifier<T> extends StateNotifier<APIState<T>> {
  QueryNotifier(
    this.service, {
    T? initial,
    bool shouldFetchOnMount = false,
  }) : super(APIState<T>.idle(initial)) {
    if (shouldFetchOnMount) {
      fetch();
    }
  }

  Future<T> Function() service;

  Future<T?> fetch({
    bool shouldThrow = false,
  }) async {
    try {
      state = APIState.loading(state.data);
      final response = await service();
      state = APIState.data(response);
      return response;
    } catch (e, trace) {
      state = APIState.error(
        cache: state.data,
        error: e.toString(),
        trace: trace,
      );
      if (shouldThrow) {
        rethrow;
      }
    }
  }
}

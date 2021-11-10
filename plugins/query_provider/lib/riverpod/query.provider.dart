import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/api.state.dart';
import 'query.notifier.dart';

StateNotifierProvider<QueryNotifier<T>, APIState<T>> QueryProvider<T>(
  Future<T> Function(StateNotifierProviderRef ref) service, {
  T? initial,
  bool shouldFetchOnMount = false,
}) {
  return StateNotifierProvider(
    (ref) => QueryNotifier(
      () => service(ref),
      initial: initial,
      shouldFetchOnMount: shouldFetchOnMount,
    ),
  );
}

StateNotifierProviderFamily<QueryNotifier<T>, APIState<T>, P>
    QueryProviderFamily<T, P>(
  Future<T> Function(StateNotifierProviderRef ref, P param) service, {
  T? initial,
  bool shouldFetchOnMount = false,
}) {
  return StateNotifierProvider.family(
    (ref, param) => QueryNotifier(
      () => service(ref, param),
      initial: initial,
      shouldFetchOnMount: shouldFetchOnMount,
    ),
  );
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/api.state.dart';
import 'query.family_notifier.dart';
import 'query.notifier.dart';

NotifierProvider<QueryNotifier<T>, APIState<T>> QueryProvider<T>(
  Future<T> Function(NotifierProviderRef ref, APIState<T> previousState)
      service, {
  T? initial,
  bool shouldFetchOnMount = false,
}) {
  return NotifierProvider(
    () => QueryNotifier(
      service,
      initial: initial,
      shouldFetchOnMount: shouldFetchOnMount,
    ),
  );
}

NotifierProviderFamily<QueryFamilyNotifier<T, P>, APIState<T>, P>
    QueryProviderFamily<T, P>(
  Future<T> Function(NotifierProviderRef ref, P param, APIState<T> previousState) service, {
  T? initial,
  bool shouldFetchOnMount = false,
}) {
  return NotifierProvider.family(
    () => QueryFamilyNotifier(
      service,
      initial: initial,
      shouldFetchOnMount: shouldFetchOnMount,
    ),
  );
}

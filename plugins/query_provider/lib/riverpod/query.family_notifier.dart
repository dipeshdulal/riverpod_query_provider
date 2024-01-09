import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/api.state.dart';

class QueryFamilyNotifier<T, P> extends FamilyNotifier<APIState<T>, P> {
  final T? initial;
  final bool shouldFetchOnMount;

  QueryFamilyNotifier(
    this.service, {
    this.initial,
    this.shouldFetchOnMount = false,
  });

  Future<T> Function(NotifierProviderRef<APIState<T>> ref, P param,
      APIState<T> previousState) service;

  @override
  APIState<T> build(_) {
    if (shouldFetchOnMount) {
      Future(fetch);
    }
    return APIState<T>.idle(initial ?? stateOrNull?.data);
  }

  Future<T?> fetch({
    bool shouldThrow = false,
  }) async {
    try {
      final previousState = state;
      state = APIState.loading(state.data);
      final response = await service(ref, arg, previousState);
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
    return null;
  }
}

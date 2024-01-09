library api;

import 'package:dio/dio.dart';

final dioOptions = BaseOptions(baseUrl: 'https://ghibliapi.vercel.app');

final httpClient = Dio(dioOptions);

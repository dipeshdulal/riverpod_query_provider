library api;

import 'package:dio/dio.dart';

final dioOptions = BaseOptions(baseUrl: 'https://ghibliapi.herokuapp.com');

final httpClient = Dio(dioOptions);

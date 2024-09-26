import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_http.dart';
import 'package:network_debugging_demok/network/logging_interceptor.dart';

final client = InterceptedHttp.build(
  interceptors: [LoggingInterceptor()],
  requestTimeout: Duration(seconds: 10),
);

import 'package:dio/dio.dart';

class ApiKeyInterceptors extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    //final SecureKeyDao secureKeyDao = getIt.get();
    //final apiToken = await secureKeyDao.value();
    // if (apiToken != null) {
    options.headers['Accept'] = 'application/json';
    options.headers['Content-Type'] = 'application/json';
    //options.headers['Authorization'] = 'Bearer $apiToken';
    //}
    super.onRequest(options, handler);
  }
}

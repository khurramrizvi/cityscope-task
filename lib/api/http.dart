import 'package:dio/dio.dart';

class Http {
  static Dio dio = Dio();

  static get instance => dio.interceptors.add(
        InterceptorsWrapper(
          onRequest:
              (RequestOptions options, RequestInterceptorHandler handler) {
            return handler.next(options);
          },
          onResponse: (Response response, ResponseInterceptorHandler handler) {
            return handler.next(response);
          },
          onError: (DioException error, ErrorInterceptorHandler handler) {
            return handler.next(error);
          },
        ),
      );
}

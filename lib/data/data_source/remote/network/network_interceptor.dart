import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@Injectable()
class NetworkInterceptor extends Interceptor {

  NetworkInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Logger().d("#### request url: ${options.path}");
    Logger().d("### request query: ${options.queryParameters}");
    Logger().d('### request data: ${options.data}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Logger().d('### response statusCode: ${response.statusCode}');
    Logger().d('### response data: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    Logger().d('### error ${err.error}');
    Logger().d('### error statusCode: ${err.response?.statusCode}');
    Logger().d('### error message ${err.message}');
    super.onError(err, handler);
  }
}
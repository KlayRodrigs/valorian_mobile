import 'package:dio/dio.dart';
import 'package:valorian_mobile/app/interfaces/http_service_interface.dart';

class HttpService implements IHttpService {
  late final Dio dio;
  
  HttpService() {
    final options = BaseOptions(
      baseUrl: "http://localhost:8080",
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      sendTimeout: const Duration(seconds: 10)
    );
    dio = Dio(options);
  }

  @override
  Future<void> delete() {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> get({required String path}) async {
    final response = await dio.get(path);
    return response.data;
  }

  @override
  Future<void> post() async {
    throw UnimplementedError();
  }

  @override
  Future<void> put() {
    throw UnimplementedError();
  }
}

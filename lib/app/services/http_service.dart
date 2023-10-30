import 'package:dio/dio.dart';
import 'package:valorian_mobile/app/interfaces/http_service_interface.dart';

class HttpService implements IHttpService {
  late final Dio dio;

  HttpService() {
    final options = BaseOptions(
        baseUrl: "http://localhost:8080",
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
        sendTimeout: const Duration(seconds: 10));
    dio = Dio(options);
  }

  @override
  Future<void> delete({required String path,required String id}) async{
    await dio.delete(path+id);
  }

  @override
  Future<Map<String, dynamic>> get({required String path}) async {
    final response = await dio.get(path);
    return response.data;
  }

  @override
  Future<void> post(
      {required String path, required Map<String, dynamic> data}) async {
    await dio.post(path, data: data);
  }

  @override
  Future<void> put({required String path, required String id, required Map<String, dynamic> data}) async{
    await dio.put(path+id, data: data);
  }
  
}

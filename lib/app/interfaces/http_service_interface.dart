abstract interface class IHttpService {
  Future<void> post({required String path, required Map<String, dynamic> data});
  Future<void> delete({required String path, required String id});
  Future<void> get({required String path});
  Future<void> put({required String path, required String id, required Map<String,dynamic> data});
}

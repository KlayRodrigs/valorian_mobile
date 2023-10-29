abstract interface class IHttpService {
  Future<void> post();
  Future<void> delete();
  Future<void> get({required String path});
  Future<void> put();
}

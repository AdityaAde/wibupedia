abstract class Endpoint {
  String endpointBaseUrlWithVersion(
      {required String path, String version = 'v1'}) {
    return '/$version/$path';
  }
}

abstract class Endpoint {
  String endpointBaseUrlWithVersion({
    required String path,
    String version = 'v3',
  }) {
    return '/$version/$path';
  }
}

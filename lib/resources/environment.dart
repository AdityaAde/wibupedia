class Environment {
  Environment({
    required this.name,
    required this.baseUrl,
    required this.authBaseUrl,
    required this.connectionTimeout,
    required this.receiveTimeout,
  });

  final String name;
  final String baseUrl;
  final int connectionTimeout;
  final int receiveTimeout;
  final String authBaseUrl;

  static late final Environment env;

  factory Environment.dev() {
    env = Environment(
      name: 'development',
      baseUrl: '',
      authBaseUrl: '',
      connectionTimeout: 60000,
      receiveTimeout: 60000,
    );
    return env;
  }

  factory Environment.prod() {
    env = Environment(
      name: 'production',
      baseUrl: 'https://otakudesu-anime-api.vercel.app/api/',
      authBaseUrl: '',
      connectionTimeout: 60000,
      receiveTimeout: 60000,
    );
    return env;
  }
}

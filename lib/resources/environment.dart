class Environment {
  Environment({
    required this.name,
    required this.baseUrl,
    required this.connectionTimeout,
    required this.receiveTimeout,
  });

  final String name;
  final String baseUrl;
  final int connectionTimeout;
  final int receiveTimeout;

  static late final Environment env;

  factory Environment.dev() {
    env = Environment(
      name: 'development',
      baseUrl: '',
      connectionTimeout: 60000,
      receiveTimeout: 60000,
    );
    return env;
  }

  factory Environment.prod() {
    env = Environment(
      name: 'production',
      baseUrl: 'https://otakudesu-anime-api.vercel.app/api/',
      connectionTimeout: 60000,
      receiveTimeout: 60000,
    );
    return env;
  }
}

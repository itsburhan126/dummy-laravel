class ApiConfig {
  static const String baseUrl = 'http://127.0.0.1:9000/api';

  static String get loginUrl => '$baseUrl/login';
  static String get registerUrl => '$baseUrl/register';
}

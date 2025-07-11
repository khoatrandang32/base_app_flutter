class AppConstants {
  static const String baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'https://api.restful-api.dev'
        '',
  );
  static const int apiTimeOut = 15;
}

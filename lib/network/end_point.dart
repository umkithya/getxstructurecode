class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = "https://fakestoreapi.com";

  // receiveTimeout
  static const int receiveTimeout = 3000;

  // connectTimeout
  static const int connectionTimeout = 5000;

  static const String users = '/users';
  static const String products = '/products';
  static const String login = '/auth/login';
}

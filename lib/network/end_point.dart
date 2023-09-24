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

class BaseUrl {
  BaseUrl._();
  static String get dev => "http://192.168.43.35:8080/api/v3";
  static String get pre => "https://pre.com";
  static String get pro => "https://pro.com";
}
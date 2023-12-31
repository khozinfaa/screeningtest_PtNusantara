class ApiEndPoints {
  static const String baseUrl =
      'https://book-crud-service-6dmqxfovfq-et.a.run.app';
  static AuthEndPoints authEndpoints = AuthEndPoints();
}

class AuthEndPoints {
  final String registerEmail = '/api/register';
  final String loginEmail = '/api/login';
}

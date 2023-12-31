import 'package:get/get.dart';

import '../../auth/auth.dart';
import 'app_routes.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: RouteName.signIn,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
        name: RouteName.signUp,
        page: () => const SignupView(),
        binding: SignupBinding()),
    // GetPage(
    //     name: RouteName.Home,
    //     page: () => const HomeView(),
    //     binding: SignupBinding()),
  ];
}

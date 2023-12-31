import 'package:get/get.dart';

import '../auth.dart';

class SigninBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SigninController());
  }
}

import '../../../config/config.dart';
// import '../../../modules/modules.dart';
import '../../../shared/shared.dart';
import '../../../utils/utils.dart';
import '../../config/routes/app_routes.dart';
import '../auth.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding: EdgeInsets.only(top: paddingTop),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  Text("Register",
                      style: Theme.of(context).textTheme.displaySmall),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Text(
                    "Name",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  AuthForm(
                    height: 40,
                    radius: 180,
                    controller: controller.nameController,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    "Email",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  AuthForm(
                    height: 40,
                    radius: 180,
                    controller: controller.emailController,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    "Pasword",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  Obx(() => AuthForm(
                        height: 40,
                        radius: 180,
                        controller: controller.passwordController,
                        obscureText: !controller.isPasswordVisible.value,
                        tapObscure: GestureDetector(
                            onTap: () => controller.isPasswordVisible.toggle(),
                            child: Icon(
                              controller.isPasswordVisible.value
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                            )),
                      )),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    "Pasword Confirm",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  Obx(() => AuthForm(
                        height: 40,
                        radius: 180,
                        controller: controller.passwordConfirmController,
                        obscureText: !controller.isPasswordVisible.value,
                        tapObscure: GestureDetector(
                            onTap: () => controller.isPasswordVisible.toggle(),
                            child: Icon(
                              controller.isPasswordVisible.value
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                            )),
                      )),
                  const Padding(padding: EdgeInsets.only(top: 25)),
                  CommonButton(
                    title: 'Daftar',
                    color: MyColors.primaryColor,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.white),
                    onTap: () {
                      // controller.emptyForm();
                      // ConditionalService().checkInternetConnection();
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah Punya Akun?",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      TextButton(
                        onPressed: () => Get.offAllNamed(RouteName.signIn),
                        child: Text(
                          "Masuk",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: MyColors.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

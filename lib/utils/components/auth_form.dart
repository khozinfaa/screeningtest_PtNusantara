import '../../config/themes/theme.dart';
import '../../shared/shared.dart';

class AuthForm extends StatefulWidget {
  final double? height;
  final double? radius;
  final bool? obscureText;
  final GestureDetector? tapObscure;
  final TextEditingController? controller;

  const AuthForm({
    super.key,
    this.height,
    this.radius,
    this.obscureText,
    this.tapObscure,
    this.controller,
  });

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  String? inputValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 40,
      child: TextField(
        onTap: () {},
        controller: widget.controller,
        obscureText: widget.obscureText ?? false,
        onSubmitted: (value) => inputValue = value,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radius ?? 10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: MyColors.secondaryColor,
            ),
            borderRadius: BorderRadius.circular(widget.radius ?? 10),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          suffixIcon: widget.tapObscure,
        ),
      ),
    );
  }
}

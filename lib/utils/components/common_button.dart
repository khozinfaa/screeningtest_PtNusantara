import '../../shared/packages.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.title,
    required this.color,
    this.height,
    required this.onTap,
    this.style,
    this.borderRadius,
    this.width,
  }) : super(key: key);

  final String title;
  final Color color;
  final double? height;
  final VoidCallback onTap;
  final TextStyle? style;
  final double? borderRadius;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? Get.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 180),
          ),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: style ?? Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

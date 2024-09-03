import 'package:flutter/material.dart';
import 'package:flutter_clean_archictecture_template/core/utils/app_constant.dart';


class FBTNWidget extends StatelessWidget {
  final String label;
  final Color? color;
  final Color textColor;
  final VoidCallback onPressed;
  final bool enableWidth;
  final double? width;

  const FBTNWidget({
    super.key,
    required this.label,
    this.color,
    this.textColor = Colors.white,
    required this.onPressed,
    this.enableWidth = false,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      width: enableWidth ? (width ?? MediaQuery.of(context).size.width) : null,
      height: 42,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstant.padding02)),
        onPressed: onPressed,
        color: color ?? Theme.of(context).primaryColor,
        textColor: textColor,
        child: Text(label),
      ),
    );
  }
}

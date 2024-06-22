import 'package:flutter/material.dart';
import 'package:traverse/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  final VoidCallback? onTap;

  const ResponsiveButton({
    super.key,
    this.isResponsive = false,
    this.width,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("img/button-one.png"),
          ],
        ),
      ),
    );
  }
}

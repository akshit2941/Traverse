import 'package:flutter/material.dart';
import 'package:traverse/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? widht;

  const ResponsiveButton({
    super.key,
    this.isResponsive = false,
    this.widht,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
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
    );
  }
}


import 'package:flutter/material.dart';
import 'package:simple_project/appcolor.dart';
class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [AppColors.primaryColor, AppColors.secondaryColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromLTWH(0, 0, bounds.height, bounds.height)),
      child: const Text(
        'LOGO',
        style: TextStyle(
          fontFamily: "Prime",
          color: Colors.white,
          fontSize: 80,
        ),
      ),
    );
  }
}

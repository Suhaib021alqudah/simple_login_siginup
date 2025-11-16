import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_project/Views/loginscreen.dart';

import 'package:simple_project/widgets/logowidget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (c) => LoginScreen()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
  body: Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          const Logo(),
          
          SizedBox(height: 20),

          Image.asset(
            'assets/images/image.png',
            height: MediaQuery.of(context).size.height * 0.5,  
          ),

          SizedBox(height: 20),

          Text(
            'LOREM IPSUM',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),

          SizedBox(height: 8),

          Text(
            'Lorem Ipsum is a dummy text used as placeholder',
            style: TextStyle(
              color: Color(0xff515151),
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  ),
),
        Positioned(
          left: 71,
          child: SvgPicture.asset('assets/images/light.svg'),
        ),
        Positioned(
          left: 120,
          top: -20,
          child: SvgPicture.asset('assets/images/light.svg'),
        ),
      ],
    );
  }
}

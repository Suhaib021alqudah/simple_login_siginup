import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_project/Views/registerscreen.dart';
import 'package:simple_project/appcolor.dart';

import 'package:simple_project/widgets/customtextfield.dart';
import 'package:simple_project/widgets/logowidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.18),
                  Logo(),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
                  Text(
                    'Welcome back!',
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.014),

                  Text(
                    'Log in to existing LOGO account',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff515151),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

                  Customtextfield(
                    controller: userNameController,
                    hint: " UserName",
                    icon: Icons.person_2_outlined,
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),
                  Customtextfield(
                    controller: passwordController,
                    hint: "Password",
                    icon: Icons.lock,
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.007),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff515151),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.030),

                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.500,
                    height: MediaQuery.sizeOf(context).height * 0.06,
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 1,
                          offset: Offset(-5, 6),
                          spreadRadius: 0.1,
                          blurStyle: BlurStyle.normal,
                        ),
                      ],

                      borderRadius: BorderRadius.circular(6),
                    ),

                    child: Center(
                      child: Text(
                        'LOG IN',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.sizeOf(context).height * 0.016,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.046),
                  Text(
                    'OR SIGHN UP USING :',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

                  Row(
                    spacing: 25,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/facebook.svg'),
                      SvgPicture.asset('assets/images/google.svg'),
                      SvgPicture.asset('assets/images/apple.svg'),
                    ],
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.042),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? ',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (c) => RegisterScreen()),
                          );
                        },
                        child: Text(
                          'SignUP',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 24,
          child: SvgPicture.asset('assets/images/Rectangle 2 blue.grey.svg'),
        ),
        Positioned(child: Image.asset('assets/images/Rectangle 1 blue.png')),
      ],
    );
  }
}

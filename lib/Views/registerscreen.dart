import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_project/Views/loginscreen.dart';
import 'package:simple_project/appcolor.dart';
import 'package:simple_project/widgets/customtextfield.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
              Text(
                'Let’s Get Started!',
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              Text(
                'Create an account on MNZL to get all features',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
              Customtextfield(
                controller: firstNameController,
                hint: 'First Name',
                icon: Icons.person_2_outlined,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.026),
              Customtextfield(
                controller: lastNameController,
                hint: 'Last Name',
                icon: Icons.person_2_outlined,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.026),
              Customtextfield(
                controller: userNameController,
                hint: 'User Name',
                icon: Icons.person_2_outlined,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.026),
              Customtextfield(
                controller: emailController,
                hint: 'Email',
                icon: Icons.email_outlined,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.026),
              Customtextfield(
                controller: passwordController,
                hint: 'Password',
                icon: Icons.lock,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.026),
              Customtextfield(
                controller: passwordController,
                hint: 'Confrim Password',
                icon: Icons.lock,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.026),
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
                    'Create',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.sizeOf(context).height * 0.016,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account',
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
                        MaterialPageRoute(builder: (c) => LoginScreen()),
                      );
                    },
                    child: Text(
                      'Login',
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
    );
  }
}

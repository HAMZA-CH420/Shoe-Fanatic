import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/LoginScreen/login_screen.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/SignUpScreen/invited_screen.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/widgets/custom_button.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/widgets/custom_textfield.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';
import 'package:shoe_fantastic/viewModel/Validator/login_signup_validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController confirmPassController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 55),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/icon/logo.png")),
                  const SizedBox(height: 25),
                  Text(
                    "Sign Up",
                    style: GoogleFonts.publicSans(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Palate.blackColor,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    "Create an account",
                    style: GoogleFonts.publicSans(
                        fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    spacing: 3,
                    children: [
                      Icon(
                        Icons.person,
                        size: 20,
                        color: Palate.blackColor,
                      ),
                      Text(
                        "Name",
                        style: GoogleFonts.publicSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Palate.blackColor),
                      )
                    ],
                  ),
                  CustomTextField(
                    isPassword: false,
                    validator: (value) => Validator().nameValidator(value),
                    controller: nameController,
                  ),
                  Row(
                    spacing: 3,
                    children: [
                      Icon(
                        Icons.email,
                        size: 20,
                        color: Palate.blackColor,
                      ),
                      Text(
                        "Email",
                        style: GoogleFonts.publicSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Palate.blackColor),
                      )
                    ],
                  ),
                  CustomTextField(
                    isPassword: false,
                    validator: (value) => Validator().emailValidator(value),
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    spacing: 3,
                    children: [
                      Icon(
                        Icons.lock_clock_rounded,
                        size: 21,
                        color: Palate.blackColor,
                      ),
                      Text(
                        "Password",
                        style: GoogleFonts.publicSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Palate.blackColor),
                      )
                    ],
                  ),
                  CustomTextField(
                    validator: (value) => Validator().passwordValidator(value),
                    controller: passwordController,
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    spacing: 3,
                    children: [
                      Icon(
                        Icons.lock_clock_rounded,
                        size: 21,
                        color: Palate.blackColor,
                      ),
                      Text(
                        "Confirm password",
                        style: GoogleFonts.publicSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Palate.blackColor),
                      )
                    ],
                  ),
                  CustomTextField(
                    validator: (value) => Validator().confirmPassValidator(
                        value, confirmPassController.text.toString()),
                    controller: confirmPassController,
                    isPassword: true,
                  ),
                  CustomButton(
                    btnName: "Sign up",
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InvitedScreen(),
                            ));
                      }
                    },
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: RichText(
                            text: TextSpan(
                                text: "Don't have an account?",
                                style: GoogleFonts.publicSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Palate.blackColor,
                                ),
                                children: <TextSpan>[
                              TextSpan(
                                  text: " Sign in",
                                  style: GoogleFonts.publicSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Palate.primaryColor))
                            ])),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

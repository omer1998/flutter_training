import 'package:flutter/material.dart';
import 'package:flutter_basic_training/facebook/core/ColorManager.dart';
import 'package:flutter_basic_training/facebook/customWidgets/inputTextField.dart';
import 'package:flutter_basic_training/facebook/customWidgets/primaryButton.dart';
import 'package:flutter_basic_training/facebook/mainFaaceBookScreen.dart';
import 'package:flutter_basic_training/generated/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String password = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 70),
                    SvgPicture.asset(
                      Assets.iconsIcFacebookLogo,
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 60),
                    FaceBookInputField(
                      onChange: (value) => email = value,
                      hint: "Mobile Number or Email Address",
                      obscureText: false,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return "this field is required";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 24),
                    FaceBookInputField(
                      onChange: (value) => password = value,
                      hint: "Password",
                      obscureText: true,
                      validator: (text) {
                        print("===> text");
                        if (text == null || text.isEmpty) {
                          return "this field is required";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 40),

                    PrimaryButton(
                      text: "Login",
                      filledColor: ColorManager.blue,
                      textColor: Colors.white,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          if (password == "oo" && email == "oo") {
                            Navigator.pushReplacementNamed(
                              context,
                              MainFaceBookScreen.mainFacebookScreenRoute,
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Email is oo and password is oo"),
                              ),
                            );
                          }
                        }
                      },
                    ),

                    ///SizedBox(height: 24),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgotten Password ?",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  PrimaryButton(
                    text: "Create Account",
                    filledColor: Colors.white,
                    textColor: ColorManager.blue,
                    onTap: () {},
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.iconsIcMetaLogo,
                        width: 24,
                        height: 24,
                      ),
                      Text(
                        "Meta",
                        style: TextStyle(
                          color: ColorManager.blue,
                          fontSize: 24,
                        ),
                      ),
                    ],
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

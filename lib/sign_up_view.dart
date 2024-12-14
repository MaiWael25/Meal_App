// ignore_for_file: use_build_context_synchronously, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:meal_app/lable_text_form_field.dart';
import 'package:meal_app/my_elevated_button%20copy.dart';
import 'package:meal_app/my_text_button.dart';
import 'package:meal_app/recipe_screen.dart';
import 'package:meal_app/sign_in_view.dart';

// ignore: must_be_immutable
class SignUpView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Let's Sign Up !",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "joining to our app is intersting step !!",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomLableTextFormField(
                    lableText: "Name",
                    hintText: "Enter your name",
                    inputType: TextInputType.text,
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) return "please enter your name";
                      return null;
                    },
                  ),
                  CustomLableTextFormField(
                    lableText: "Email",
                    hintText: "Enter your email",
                    inputType: TextInputType.emailAddress,
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) return "please enter your email";
                      return null;
                    },
                  ),
                  CustomLableTextFormField(
                    lableText: "Password",
                    hintText: "Enter your password",
                    inputType: TextInputType.visiblePassword,
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) return "please enter your password";
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: MyElevatedButton(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffFFAE59),
                      height: 60,
                      width: 290,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RecipeScreen(),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Have an account ?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      MyTextButton(
                        onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SigninView(),
                          ),
                        ),
                        child: const Text(
                          "Log In Now",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFAE59),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

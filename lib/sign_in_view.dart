import 'package:flutter/material.dart';
import 'package:meal_app/lable_text_form_field.dart';
import 'package:meal_app/my_elevated_button%20copy.dart';
import 'package:meal_app/my_text_button.dart';
import 'package:meal_app/recipe_screen.dart';
import 'package:meal_app/sign_up_view.dart';

// ignore: must_be_immutable
class SigninView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  SigninView({super.key});

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
                  const SizedBox(height: 35),
                  const Text(
                    "Welcome back to our app",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "you are missed in our world",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomLableTextFormField(
                    lableText: "Email",
                    hintText: "Enter your email",
                    inputType: TextInputType.emailAddress,
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your email";
                      }
                      return null;
                    },
                  ),
                  CustomLableTextFormField(
                    lableText: "Password",
                    hintText: "Enter your password",
                    inputType: TextInputType.text,
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
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
                        "Log In",
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
                        "Don't have an account ?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      MyTextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpView(),
                            ),
                          );
                        },
                        child: const Text(
                          "Register now",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFAE59),
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
      ),
    );
  }
}

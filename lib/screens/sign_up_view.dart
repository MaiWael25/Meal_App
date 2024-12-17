import 'package:flutter/material.dart';
import 'package:meal_app/widgets/custom_text_field.dart';
import 'package:meal_app/widgets/status_drop_dowen_menu.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  int selectGroup = 1;
  bool valueSwitch = true;
  int age = 18;
  bool? valueCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        title: const Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Image(
              image: AssetImage("assets/task1/cat.png"),
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Your Company Name",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const CustomTextField(
              obscureText: false,
              labelText: 'Email',
              icon: Icons.email,
            ),
            const CustomTextField(
              obscureText: true,
              labelText: "Password",
              icon: Icons.lock,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Gender : ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: RadioListTile(
                      title: const Text('Female'),
                      value: 2,
                      groupValue: selectGroup,
                      onChanged: (value) {
                        setState(() {
                          selectGroup = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: RadioListTile(
                      title: const Text('Male'),
                      value: 1,
                      groupValue: selectGroup,
                      onChanged: (value) {
                        setState(() {
                          selectGroup = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const StatusDropDowenMenu(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Age : $age"),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Slider(
                      activeColor: Colors.blue,
                      label: "Select Age",
                      value: age.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          age = value.toInt();
                        });
                      },
                      min: 18,
                      max: 100,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    "Receive Notification",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  const Spacer(),
                  Switch(
                    activeColor: Colors.blue,
                    value: valueSwitch,
                    onChanged: (value) {
                      setState(() {
                        valueSwitch = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text("I agree to the Terms and Conditions"),
                  const Spacer(),
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.blue,
                    value: valueCheck,
                    onChanged: (bool? newValue) {
                      setState(() {
                        valueCheck = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Note",
                  border: OutlineInputBorder(),
                ),
                minLines: 3,
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

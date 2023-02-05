import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/components/compsButton.dart';
import '../../../data/components/compsSocialButton.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Sign In'),
      ),
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                height: 50,
                width: Get.width,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: Get.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView(
                children: [
                  const SizedBox(height: 30),
                  Column(
                    children: const [
                      Text(
                        "Let’s sign you in",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 80,
                        ),
                        child: Text(
                          "Welcome back, you’ve been missed!",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Username or email",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              side: const BorderSide(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(2),
                                ),
                              ),
                              onChanged: (value) {
                                print(value);
                              },
                            ),
                            const Text("Remember me"),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            print("Forgot password?");
                            Get.offAllNamed(Routes.FORGOT_PASSWORD);
                          },
                          child: const Text(
                            "Forgot password?",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90),
                    child: compsButton(
                      text: "SIGN UP",
                      onPressed: () {
                        print("SIGN UP");
                        Get.offAllNamed(Routes.HOME);
                      },
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  compsSocialButton(
                    text: "Continue with Google",
                    icon: "assets/images/icons/google.svg",
                    color: Colors.red,
                    onPressed: () {
                      print("Continue with Google");
                    },
                  ),
                  const SizedBox(height: 20),
                  compsSocialButton(
                    text: "Continue with Facebook",
                    icon: "assets/images/icons/facebook.svg",
                    color: Colors.blue,
                    onPressed: () {
                      print("Continue with Facebook");
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print("Sign In");
                          Get.offAllNamed(Routes.REGISTER);
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 14,
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
        ],
      ),
    );
  }
}

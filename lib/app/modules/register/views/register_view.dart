import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasabahce/app/data/components/compsButton.dart';
import 'package:pasabahce/app/routes/app_pages.dart';

import '../../../data/components/compsSocialButton.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('REGISTER'),
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
                        "Create your account",
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
                          "After your registration is complete,you can see our opportunity products.",
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
                        hintText: "Username",
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
                        hintText: "Email",
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
                      vertical: 20,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Phone",
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90),
                    child: compsButton(
                      text: "SIGN UP",
                      onPressed: () {
                        print("SIGN UP");
                        Get.toNamed(Routes.VERIFICATION);
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
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print("Sign In");
                          Get.offAllNamed(Routes.LOGIN);
                        },
                        child: const Text(
                          "Sign In",
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

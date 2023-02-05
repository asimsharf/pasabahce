import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasabahce/app/data/components/compsMsgDialog.dart';
import 'package:pasabahce/app/routes/app_pages.dart';

import '../../../data/components/compsButton.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Reset password'),
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
                        "Forgot your password?",
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
                          "Enter your email address and we will send you instructions on how to reset your password.",
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
                        hintText: "Email address",
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 90,
                    ),
                    child: compsButton(
                      text: "RECOVER EMAIL",
                      onPressed: () {
                        compsMsgDialog(
                          asset: "assets/images/icons/check_email.svg",
                          title: "Check your email",
                          subtitle:
                              "We've sent you instructions on how to reset the password (also check the Spam folder).",
                          buttonText: "OPEN MY MAIL CLIENT",
                          buttonRoute: Routes.LOGIN,
                          onPressed: () {
                            print("OPEN MY MAIL CLIENT");
                          },
                        );
                      },
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Open model sheet
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasabahce/app/routes/app_pages.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../data/components/compsButton.dart';
import '../../../data/components/compsMsgDialog.dart';
import '../controllers/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
  const VerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: Get.height,
              color: Colors.white,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Enter the 4 digit code sent to:",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "+966- 568970184",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 80,
                          vertical: 20,
                        ),
                        child: Text(
                          "We've sent a 4 digit code to your phone number. Please enter the verification code.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // Code Text Field
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 80,
                          vertical: 20,
                        ),
                        child: pinCodeTextField(context),
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 80,
                          vertical: 20,
                        ),
                        child: Text(
                          "Didn’t receive the SMS? Request new code in 01:00",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 60,
                    right: 30,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    left: 90,
                    right: 90,
                    child: compsButton(
                      text: "CONTINUE",
                      onPressed: () {
                        compsMsgDialog(
                          asset: "assets/images/icons/phone_verified.svg",
                          title: "Phone verified",
                          subtitle:
                              "Congratulations, your phone number has been verified. You can now start using the app.",
                          buttonText: "Continue",
                          buttonRoute: Routes.LOGIN,
                          onPressed: () {
                            Get.offAllNamed(Routes.LOGIN);
                          },
                        );
                      },
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

  PinCodeTextField pinCodeTextField(context) {
    return PinCodeTextField(
      length: 4,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.underline,
        activeFillColor: Colors.white,
        activeColor: const Color(0xFFCC9D76),
        selectedColor: const Color(0xFFCC9D76).withOpacity(0.5),
        inactiveColor: const Color(0xFFCC9D76).withOpacity(0.2),
        selectedFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        errorBorderColor: Colors.red,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      errorAnimationController: controller.errorController,
      controller: controller.textEditingController,
      onCompleted: (v) {
        log(v, name: 'onCompleted');
      },
      onChanged: (value) {
        log(value, name: 'onChanged');
      },
      beforeTextPaste: (text) {
        log(text!, name: 'beforeTextPaste');
        return true;
      },
      appContext: context,
    );
  }
}

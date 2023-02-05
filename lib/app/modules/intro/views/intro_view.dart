import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/components/compsButton.dart';
import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx(
        () {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _stepper(context),
              const SizedBox(height: 40),
              onBoarding(context),
              compsButton(
                text: controller.onBoarding.value < 2 ? 'NEXT' : 'GET STARTED',
                onPressed: () {
                  controller.increment();
                },
                color: const Color(0xFFD7A324),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget onBoarding(context) {
    switch (controller.onBoarding.value) {
      case 0:
        return _firstOnBoarding(context);
      case 1:
        return _secondOnBoarding(context);
      case 2:
        return _thirdOnBoarding(context);
      default:
        return _firstOnBoarding(context);
    }
  }

  /// OnBoarding - 01
  Widget _firstOnBoarding(context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (child, animation) {
        return ScaleTransition(scale: animation, child: child);
      },
      child: Column(
        key: ValueKey<int>(controller.onBoarding.value),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 406,
            width: 406,
            child: Image.asset(
              'assets/images/onboarding/first_on_board.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            '€5650',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "HISTORY CULTURE GLASS",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Gülçehre İbrik Limited Edition",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }

  /// OnBoarding - 02
  Widget _secondOnBoarding(context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (child, animation) {
        return ScaleTransition(scale: animation, child: child);
      },
      child: Column(
        key: ValueKey<int>(controller.onBoarding.value),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "HISTORY CULTURE GLASS",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Hagia Sophia\n Deesis Mosaic Vase",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Text(
            '€3450',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 378,
            width: 378,
            child: Image.asset(
              'assets/images/onboarding/second_on_board.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 130),
        ],
      ),
    );
  }

  /// OnBoarding - 03
  Widget _thirdOnBoarding(context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (child, animation) {
        return ScaleTransition(scale: animation, child: child);
      },
      child: Column(
        key: ValueKey<int>(controller.onBoarding.value),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 402,
            width: 402,
            child: Image.asset(
              'assets/images/onboarding/third_on_board.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            '€3150',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "HISTORY CULTURE GLASS",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Mystical Vase Limited Edition",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }

  Widget _stepper(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: controller.onBoarding.value == 0 ? 6 : 4,
          height: controller.onBoarding.value == 0 ? 6 : 4,
          decoration: BoxDecoration(
            color: controller.onBoarding.value == 0
                ? const Color(0xffFFD700)
                : Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 4),
        Container(
          width: controller.onBoarding.value == 1 ? 6 : 4,
          height: controller.onBoarding.value == 1 ? 6 : 4,
          decoration: BoxDecoration(
            color: controller.onBoarding.value == 1
                ? const Color(0xffFFD700)
                : Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 4),
        Container(
          width: controller.onBoarding.value == 2 ? 6 : 4,
          height: controller.onBoarding.value == 2 ? 6 : 4,
          decoration: BoxDecoration(
            color: controller.onBoarding.value == 2
                ? const Color(0xffFFD700)
                : Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}

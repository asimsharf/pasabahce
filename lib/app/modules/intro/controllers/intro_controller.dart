import 'package:get/get.dart';
import 'package:pasabahce/app/routes/app_pages.dart';

class IntroController extends GetxController {
  RxInt onBoarding = 0.obs;

  increment() {
    if (onBoarding.value < 2) {
      onBoarding.value++;
    } else {
      Get.offAllNamed(Routes.REGISTER);
    }
  }
}

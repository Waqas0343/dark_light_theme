import 'dart:async';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _goToNext();
  }

  void _goToNext() {
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.home);
    });
  }
}

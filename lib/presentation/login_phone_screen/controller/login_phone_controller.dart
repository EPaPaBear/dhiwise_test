import '/core/app_export.dart';
import 'package:test/presentation/login_phone_screen/models/login_phone_model.dart';
import 'package:flutter/material.dart';

class LoginPhoneController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginPhoneModel> loginPhoneModelObj = LoginPhoneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}

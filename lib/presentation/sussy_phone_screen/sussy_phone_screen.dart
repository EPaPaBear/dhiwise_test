import 'controller/sussy_phone_controller.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/custom_button.dart';

class SussyPhoneScreen extends GetWidget<SussyPhoneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Padding(
                          padding: getPadding(left: 111, top: 405, right: 111),
                          child: Obx(() => Text(
                              controller.sussyPhoneModelObj.value.nameTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtPoppinsSemiBold26.copyWith()))),
                      CustomButton(
                          width: 205,
                          text: "lbl_log_out".tr,
                          margin: getMargin(
                              left: 111, top: 37, right: 111, bottom: 20),
                          variant: ButtonVariant.OutlinePinkA100,
                          fontStyle: ButtonFontStyle.PoppinsExtraBold24,
                          onTap: onTapBtnLogout)
                    ]))))));
  }

  void onTapBtnLogout() {
    Map postLogoutReq = {};
    controller.callCreateLogout(
      postLogoutReq,
      successCall: _onCreateLogoutSuccess,
      errCall: _onCreateLogoutError,
    );
  }

  void _onCreateLogoutSuccess() {
    Get.find<PrefUtils>()
        .setMessage(controller.postLogoutResp.message!.toString());
    Get.toNamed(AppRoutes.loginPhoneScreen);
  }

  void _onCreateLogoutError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Logout Error",
        middleText: "Could not logout");
  }
}

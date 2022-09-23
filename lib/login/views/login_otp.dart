// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:quizu_khulood/global/app_theme.dart';
import 'package:quizu_khulood/login/controllers/login_controller.dart';
import 'package:quizu_khulood/routes/app_route.dart';


class LoginOtpPage extends StatelessWidget {
  const LoginOtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   // MainController mainCtrl = Get.find();
    LoginController loginCtrl = Get.find();
    
   // loginCtrl.context = context;

    final otpController = TextEditingController();

    return Scaffold(
        backgroundColor: AppTheme.white,
        body: Obx(() => LoadingOverlay(
            isLoading: loginCtrl.isLoading.value,
            opacity: 0.5,
            progressIndicator: CircularProgressIndicator(),
            child: Directionality(
                textDirection: TextDirection.ltr,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: ListView(
                    children: <Widget>[
                 
                          AppTheme.textDecorNormalBlack(
                                "QuizU ⏳", "en"),  

                      AppTheme.textDecorNormalBlack_24(
                          "Please enter the OTP sent to your mobile", "en"),
                      SizedBox(height: 15),

                    
                      
                      SizedBox(height: 35),
                      Directionality(
                          textDirection:  TextDirection.ltr,
                          child: PinCodeTextField(
                            controller: otpController,
                            length: 4,
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            animationType: AnimationType.fade,
                            animationDuration: Duration(milliseconds: 300),
                            mainAxisAlignment: MainAxisAlignment.center,
                            pinTheme: PinTheme(
                              fieldHeight: 55,
                              fieldWidth: 52,
                              borderWidth: 1,
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(8),
                              fieldOuterPadding: EdgeInsets.all(5),
                              activeColor: AppTheme.black,
                              inactiveColor:  AppTheme.grey,
                            ),
                            onChanged: (value) {
                                // if (value.length == 4) loginCtrl.otpHasError.value = false;
                                // loginCtrl.otpInput.value = value; 
                            },
                            appContext: context,
                          )),
                      SizedBox(height: 15),

                      // OTP Error
                      // Visibility(
                      //   visible: loginCtrl.otpHasError.value,
                      //   child: Text(appTrans.transOTPIncorrect(),
                      //       style: AppTheme.dynamicStyle(
                      //           color: Color(0xFFCD304A), size: 18.0)),
                      // ),
                      SizedBox(height: 35),

                      ElevatedButton(
                        child: AppTheme.textDecorNormalWhite(
                            "Check", "en"),
                        style: ElevatedButton.styleFrom(
                          primary: AppTheme.darkGrey,
                          minimumSize: Size(355, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        onPressed: () async { 
                           loginCtrl.login("kkk");

                         // loginCtrl.verifyPhone(loginCtrl.mobile.value);
                            // if (loginCtrl.otpInput.value.length != 4 || loginCtrl.otpInput.value != loginCtrl.otpCode.value) {
                            //   loginCtrl.otpHasError.value = true;
                            // } else {
                            //   loginCtrl.otpHasError.value = false;
                            //   loginCtrl.getProfileData(loginCtrl.mobile.value);
                            // } 
                        },
                      ),
                    

                  
                    ],
                  
              
                
                ))))));  }
}

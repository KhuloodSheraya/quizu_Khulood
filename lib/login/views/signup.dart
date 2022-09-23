// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:quizu_khulood/global/app_theme.dart';
import 'package:quizu_khulood/login/controllers/login_controller.dart';
import 'package:quizu_khulood/routes/app_route.dart';


class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   // MainController mainCtrl = Get.find();
    LoginController loginCtrl = Get.find();
    
   // loginCtrl.context = context;
  final _userName = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    String? validatename(String? value) {
    if (value!.isEmpty) {
      return "Username  is Required";
    }
    return null;
  } 

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
                          "What’s your name?", "en"),
                      SizedBox(height: 15),

                     TextFormField(
                              //  maxLength: 15,
                                keyboardType: TextInputType.name,
                                controller: _userName,
                                textInputAction: TextInputAction.next,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: AppTheme.inputDecor(
                                    'User Name', 20.0, '', Icon(null), ''),
                                validator: validatename,
                                onChanged: validatename,
                              ),
                      
                      SizedBox(height: 15),
                    

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
                           // loginCtrl.getProfileData(loginCtrl.mobile.value);

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

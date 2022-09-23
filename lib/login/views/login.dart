import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:quizu_khulood/global/app_theme.dart';
import 'package:quizu_khulood/login/controllers/login_controller.dart';
// import 'package:racon/language_controller/apptrans_controller.dart';
// import 'package:racon/routes/app_route.dart';
// import 'package:racon/screen/login/controllers/login_controller.dart';
// import 'package:racon/screen/login/controllers/signup_controller.dart';
// import 'package:racon/screen/onboading/controllers/main_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MainController mainCtrl = Get.find();
    LoginController loginCtrl = Get.find();

    //signupCtrl.context = context;

    final _mobile = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    String? validateMobile(String? value) {
      String patttern = r'(^[0-9]*$)';
      RegExp regExp = RegExp(patttern);
      if (value!.isEmpty) {
        // return appTrans.transRequired();
      } else if (value.length != 9) {
        //return appTrans.transisdigitMobileNo("9");
      } else if (!regExp.hasMatch(value)) {
        // return appTrans.transisdigit();
      }
      return null;
    }

    return WillPopScope(
        onWillPop: () async => false,
        child: Obx(() => LoadingOverlay(
            isLoading: loginCtrl.isLoading.value,
            opacity: 0.5,
            progressIndicator: CircularProgressIndicator(),
            child: Directionality(
                textDirection: TextDirection.ltr,
                child: Scaffold(
                    backgroundColor: AppTheme.white,
                    body: Form(
                        key: _formKey,
                        child: ListView(
                          padding: EdgeInsets.all(15),
                          children: <Widget>[
                            SizedBox(height: 30),
                         
                            AppTheme.textDecorNormalBlack(
                                "QuizU ⏳", "en"),
                            SizedBox(height: 15),
                            Container(
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x0a1d252d),
                                      blurRadius: 34,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Directionality(
                                    textDirection: TextDirection.ltr,
                                    child: TextFormField(
                                      maxLength: 9,
                                      keyboardType: TextInputType.number,
                                      controller: _mobile,
                                      textInputAction: TextInputAction.done,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: AppTheme.inputDecorMobile(
                                          '9810098100',
                                          20.0,
                                          '',
                                          Icon(null),
                                          ''),
                                     // validator: validateMobile,
                                      onChanged: (val) {
                                        if (val.length == 9) {
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        }
                                      },
                                      onEditingComplete: () {
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                    ))),
                            SizedBox(height: 25),
                            ElevatedButton(
                              child: AppTheme.textDecorNormalWhite(
                                  "Start", "en"),
                              style: ElevatedButton.styleFrom(
                                primary: AppTheme.grey,
                                minimumSize: Size(355, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              onPressed: () async {
                                if (!_formKey.currentState!.validate()) {
                                  // PopUps.showFlush(
                                  //     context,
                                  //     appTrans.transRequired(),
                                  //     appTrans.transFillTheMissing(),
                                  //     mainCtrl.lang.value);
                                } else {
                                  String comMobile = "966" + _mobile.text;
                                  loginCtrl.getProfileData(comMobile);
                                }
                              },
                            ),
                            SizedBox(height: 15),
                          
                           
                            
                          ],
                        ))))
                        )));
  }
}

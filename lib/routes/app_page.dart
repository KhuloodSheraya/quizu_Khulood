import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:quizu_khulood/login/bindings/login_bindings.dart';
import 'package:quizu_khulood/login/views/signup.dart';
import 'package:quizu_khulood/routes/app_route.dart';

import '../login/views/login.dart';
import '../login/views/login_otp.dart';

class AppPages {

  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const LoginPage(),
      transition: Transition.fadeIn
    ),

    //  GetPage(
    //   name: Routes.PAGE_SCROLL,
    //   page: () => const PageScroll(),
    //   transition: Transition.fadeIn,
    // ),


     GetPage(
      name: Routes.SIGNUP,
      page: () => const SignupPage(),
      binding: LoginBinding(),
      transition: Transition.fadeIn,
    ),
      
     GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
      transition: Transition.fadeIn,
    ),
    

     GetPage(
      name: Routes.LOGIN_OTP,
      page: () => const LoginOtpPage(),
      transition: Transition.fadeIn,
    ),
    


    //    GetPage(
    //   name: Routes.DASHBOARD,
    //   page: () => const DashboardPage(),
    //   binding: DashboardBinding(),
    //   transition: Transition.fadeIn,
    // ),
    
    //   GetPage(
    //   name: Routes.HOME,
    //   page: () =>  NotificationPage(),
    //   binding: DashboardBinding(),
    //   transition: Transition.fadeIn,
    // ),
    

    //   GetPage(
    //   name: Routes.LEAd_PAGE,
    //   page: () =>  CameraPostPage(),
    //   binding: RequestBinding(),
    //   transition: Transition.fadeIn,
    // ),

    // GetPage(
    //   name: Routes.PROFILE,
    //   page: () =>  VideoPostPage(),
    //   binding: RequestBinding(),
    //   transition: Transition.fadeIn,
    // ),


    // GetPage(
    //   name: Routes.QUIZ_PAGE,
    //   page: () =>  GalleryPostPage(),
    //   binding: RequestBinding(),
    //   transition: Transition.fadeIn,
    // ),

    // GetPage(
    //   name: Routes.CORRECT_PAGE,
    //   page: () =>  AnswerPostPage(),
    //   binding: RequestBinding(),
    //   transition: Transition.fadeIn,
    // ),


    //    GetPage(
    //   name: Routes.WRONG_PAGE,
    //   page: () =>  AnswerPostPage(),
    //   binding: RequestBinding(),
    //   transition: Transition.fadeIn,
    // ),
    
    
    ];


}
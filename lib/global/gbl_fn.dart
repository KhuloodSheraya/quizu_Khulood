import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:io';

//import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'app_theme.dart';

class GblFn {
  GblFn._();

  // For Dev
  static const webUrl = '';
  static const baseUrl = 'https://quizu.okoul.com/';
 
  
  static pushReplacement(BuildContext _context, var page) {
    return Navigator.pushReplacement(_context, MaterialPageRoute(builder: (_context) => page));
  }

  static pushScreen(BuildContext _context, var page) {
    return Navigator.push(_context, MaterialPageRoute(builder: (_context) => page));
  }

  static pop(BuildContext _context) {
    return Navigator.pop(_context);
  }

  static loadingIndicator() {
    return  const Padding(
      padding: EdgeInsets.all(6.0),
      child: Center(
        child: Opacity(
          opacity: 0.8,
          child: LinearProgressIndicator(color:AppTheme.white, minHeight:2),
        ),
      ),
    );
  }

  static showSnackbar(title, message,[var type = 'normal']){
    var bg = const Color(0xFFe2e3e5);
    var tc = const Color(0xFF41464b);
    if(type == 'success'){
      bg = const Color(0xFFd4edda);
      tc = const Color(0xFF0f5132);
    } else if(type == 'warning'){
      bg = const Color(0xFFfff3cd);
      tc = const Color(0xFF664d03);
    } else if(type == 'error'){
      bg = const Color(0xFFf8d7da);
      tc = const Color(0xFF842029);
    } else if(type == 'info'){
      bg = const Color(0xFFcff4fc);
      tc = const Color(0xFF055160);
    }
    Get.snackbar(
      title,
      message,
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 60 ),
      colorText: tc,
      backgroundColor: bg,
      duration: const Duration(seconds: 3),
      isDismissible: true,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // static showBottomSheet(_context, _lang, var content) async {
  //   return showModalBottomSheet<void>(
  //     backgroundColor: AppTheme.lightBlue,
  //     elevation: 20.0,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(10.0),
  //         topRight: Radius.circular(10.0),
  //       )
  //     ),
  //     context: _context,
  //     builder: (BuildContext context) {return Directionality(
  //         textDirection: _lang == 'en'
  //           ? TextDirection.ltr
  //           : TextDirection.rtl,
  //         child: content,
  //       );
  //     }
  //   );  
  // }

  static showBottomSheet(_lang, var bottomsheet) {
    return Get.bottomSheet(
      Directionality(
        textDirection: _lang == 'en'
          ? TextDirection.ltr
          : TextDirection.rtl,
        child: bottomsheet,
      ),
      elevation: 20.0,
      isScrollControlled: true,
      // enableDrag: false,
      backgroundColor: const Color(0xFFf9f9fb),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        )
      ) 
    );        
  }

  static showDialogView({var content}) async {
    return await Get.defaultDialog( 
      radius: 10,
      title: "",
      titlePadding: const EdgeInsets.all(0),
      contentPadding: const EdgeInsets.fromLTRB(20,0,20,10), 
      barrierDismissible: false,
      content: WillPopScope(
        onWillPop: () async => false,
        child: content
      ) 
    );
  }   




}

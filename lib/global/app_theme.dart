// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

 
  static const Color black = Color(0xff414254);
  static const Color white = Color(0xffffffff);
  // ignore: constant_identifier_names
  static const Color dark_blue = Color(0xff1d252d);
  static const Color lightGrey = Color(0x1a1d252d);
  static const Color darkGrey = Color(0xff656d78);
  static const Color green = Color(0xff2de5b5);
  static const Color red = Color(0xffcd304a);
  static const Color grey = Color(0xff45495f);
  static const String arFont = 'DIN Next LT Arabic';
  static const String enFont = 'trebuc';
  static const Color whiteSmoke = Color(0xFFDDE5ED);
  static const Color blackLight = Color(0x0A1D252D);
  static const Color whiteGrey = Color(0xFF939599);

/////////// text styles/////////
  static textDecorTinyGreen(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 10,
        color: green,
      ),
      textAlign: TextAlign.center,
    );
  }

  static textDecorTinyRed(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 10,
        color: red,
      ),
      textAlign: TextAlign.center,
    );
  }

  static textDecorTinyGrey(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 10,
        color: grey,
      ),
      textAlign: TextAlign.center,
    );
  }

  static textDecorTinyPurple(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 10,
        color: green,
      ),
      textAlign: TextAlign.center,
    );
  }

  static textDecorGreenBold(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 28.000001907348633,
        color: green,
        fontWeight: FontWeight.w700,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorRedBold(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 28.000001907348633,
        color: red,
        fontWeight: FontWeight.w700,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorNormalRedBold(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 16,
        color: red,
        fontWeight: FontWeight.w700,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorNormalRedCenter(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 18,
        color: red,
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: TextAlign.center,
    );
  }

  static textDecorBoldBlack(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 28.000001907348633,
        color: black,
        fontWeight: FontWeight.w700,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorBoldGreen(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 28.000001907348633,
        color: green,
        fontWeight: FontWeight.w700,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorNormalBlack(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 16,
        color: black,
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }
  static textDecorNormalBlackPay(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 16,
        color: black,
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: TextAlign.center,
    );
  }

  static textDecorNormalBlackLineintheMid(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        decoration: TextDecoration.lineThrough,
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 16,
        color: black,
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorNormalBlackLineintheMid_12(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        decoration: TextDecoration.lineThrough,
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 16,
        color: Color(0xFF656D78),
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorNormalWhiteLineintheMid_12(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        decoration: TextDecoration.lineThrough,
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 16,
        color: white,
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorNormalBlackCenter(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 18,
        color: black,
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: TextAlign.center,
    );
  }

  static textDecorNormalBlack_24(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 24,
        color: black,
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorNormalWhite(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 16,
        color: const Color(0xffffffff),
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorNormalWhiteCenter(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 18,
        color: const Color(0xffffffff),
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: TextAlign.center,
    );
  }

  static textDecorWhiteUnderlineSmall(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 14,
        color: white,
        fontWeight: FontWeight.w500,
        height: 1.499999821186087,
        decoration: TextDecoration.underline,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorLargeWhite(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 22,
        color: const Color(0xffffffff),
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorMedWhite(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 20,
        color: const Color(0xffffffff),
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorNormalBlackSmall_16(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 16,
        color: black,
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorlargeWhiteBold(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 24,
        color: const Color(0xffffffff),
        fontWeight: FontWeight.w700,
        height: 1.3333333333333333,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorNormalPurple(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 18,
        color: green,
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorSoftBlack(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 18,
        color: const Color(0xff707070),
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }



  static textDecorLightGrey(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 16,
        color: const Color(0x80656d78),
        fontWeight: FontWeight.w500,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorGreyBold_18(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 18,
        color: grey,
        fontWeight: FontWeight.w700,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorGreySmall_12(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: lang == 'en' ? enFont : arFont,
          fontSize: 13,
          color: grey,
          //  fontWeight: FontWeight.w700,
          height: 1.6153846153846154),
      textAlign: TextAlign.center,
    );
  }

  static textDecorDarkGrey(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 16,
        color: darkGrey,
        fontWeight: FontWeight.w500,
        height: 1.499999821186087,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorDarkGreySmall(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 14,
        color: darkGrey,
        fontWeight: FontWeight.w500,
        height: 1.499999821186087,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  static textDecorRedSmall(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 14,
        color: red,
        fontWeight: FontWeight.w500,
        height: 1.499999821186087,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }



  

  static textDecorDarkBlueBold(String text, String lang) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: 16,
        color: dark_blue,
        fontWeight: FontWeight.w500,
        height: 1.3333333333333333,
      ),
      textAlign: lang == 'en' ? TextAlign.left : TextAlign.right,
    );
  }

  //////////////////Text Styles/////////////////////

//////////////////Field Styles/////////////////////
  static inputDecor(
      String hinttext, double padding, String label, Icon icon, lang) {
    return InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffdde5ed), width: 1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        // labelText: label,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffdde5ed),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        labelStyle: TextStyle(
          color: Colors.grey[700],
          fontFamily: lang == 'en' ? enFont : arFont,
        ),

        //prefixIcon: Text('966'),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: green, width: 1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        contentPadding: EdgeInsets.all(padding),
        filled: true,
        hintStyle: TextStyle(
          color: Colors.grey[400],
          fontSize: 16,
          fontFamily: lang == 'en' ? enFont : arFont,
        ),
        hintText: hinttext,
        fillColor: Color(0xffffffff),
        isDense: true);
  }


  //////////////////Field Styles/////////////////////
  
 
  static inputDecorMobile(
      String hinttext, double padding, String label, Icon icon, lang) {
    return InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffdde5ed), width: 1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffdde5ed),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        labelStyle: TextStyle(
          color: Colors.grey[700],
          fontFamily: lang == 'en' ? enFont : arFont,
        ),
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 3),
              child: Text(
                " +966",
              ),
            ),
            SizedBox(height: 30, child: VerticalDivider(color: AppTheme.grey))
          ],
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: green, width: 1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        contentPadding: EdgeInsets.all(padding),
        filled: true,
        hintStyle: TextStyle(
          color: Colors.grey[400],
          fontSize: 16,
          fontFamily: lang == 'en' ? enFont : arFont,
        ),
        hintText: hinttext,
        fillColor: white,
        isDense: true);
  }

  

  /////////////////////Field Styles//////////////////

  // For Dynamic Style by r9
  static dynamicStyle(
      {var lang = 'en',
      var color = darkGrey,
      double size = 16.0,
      var weight = FontWeight.w500,
      var height = 1.2}) {
    return TextStyle(
        color: color,
        fontFamily: lang == 'en' ? enFont : arFont,
        fontSize: size,
        fontWeight: weight,
        height: height);
  }

  static containerBoxDecoration(
      {var bgColor = white,
      var borderColor = whiteSmoke,
      var borderRadius = 8.0}) {
    return BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: blackLight,
          blurRadius: 34,
          offset: Offset(0, 2),
        ),
      ],
      color: bgColor,
      borderRadius: BorderRadius.circular(borderRadius),
      border:
          Border.all(color: borderColor, style: BorderStyle.solid, width: 1.0),
    );
  }

  static bottomSheetButtonStyle() {
    return ElevatedButton.styleFrom(
      elevation: 1,
      padding: EdgeInsets.all(12),
      primary: white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    );
  }

  static dynamicStyleLink(
      [double size = 16.0,
      var weight = FontWeight.w500,
      var font = 'DIN Next LT Arabic']) {
    return TextStyle(
      color: Color(0xff506de2),
      fontFamily: font,
      fontSize: size,
      fontWeight: weight,
      decoration: TextDecoration.underline,
    );
  }

  static dynamicBoxDecoration() {
    return BoxDecoration(boxShadow: const [
      BoxShadow(
        color: blackLight,
        blurRadius: 34,
        offset: Offset(0, 2),
      ),
    ]);
  }

  static headerDashboardBoxDecoration() {
    return BoxDecoration(
      color: AppTheme.black,
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15.0),
          bottomLeft: Radius.circular(15.0)),
    );
  }

  
  static dynamicInputMobile(String hintText, double padding ,[var widget]) {
    return InputDecoration(
      contentPadding: EdgeInsets.all(padding),
      filled: true,
      fillColor: Colors.white, 
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.grey[500], 
        fontSize: 16
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: lightGrey, 
          width: 1
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightGrey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: black, 
          width: 1
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      prefixIcon: widget
    );
  }
}

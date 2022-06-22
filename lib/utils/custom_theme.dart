import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
Color darkHeaderClr = Colors.grey.shade800;
const labelColor = Color(0xFF8A8989);

class Themes {
  static final light = ThemeData(
      backgroundColor: Colors.white,
      primaryColor: primaryClr,
      brightness: Brightness.light);

  static final dark = ThemeData(
      backgroundColor: darkGreyClr,
      primaryColor: darkGreyClr,
      brightness: Brightness.dark);
}

TextStyle get logoStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get logoStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

//heading

TextStyle get headingStyleBold {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}
TextStyle get headingStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get headingNormalStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}



//subheading

TextStyle get subHeadingStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get subHeadingStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}


TextStyle get subHeadingNormalStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 18,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}


//TITLE
TextStyle get titleStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get titleStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get titleNormalStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}




TextStyle get subTitleStyleBold {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get subTitleStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}


TextStyle get subTitleNormalStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get buttonStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? Colors.white : Colors.white));
}

TextStyle get buttonStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? Colors.black : Colors.white));
}

TextStyle get paragraphStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get paragraphStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}


TextStyle get paragraphNormalStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get semiParagraphStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}
TextStyle get semiParagraphStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get timeStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Get.isDarkMode ? Colors.black : Colors.black));
}

TextStyle get timeStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 14, color: Get.isDarkMode ? Colors.black : Colors.black));
}

TextStyle get notificationStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 12, color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get modeStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? Colors.black : Colors.white));
}

TextStyle get searchStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? Colors.black : Colors.black));
}

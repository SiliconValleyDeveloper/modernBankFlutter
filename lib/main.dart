import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modernbank/utils/custom_theme.dart';
import 'package:modernbank/utils/theme_services.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

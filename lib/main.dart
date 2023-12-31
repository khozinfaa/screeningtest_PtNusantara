import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'config/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppRoutes.pages[0].name,
      getPages: AppRoutes.pages,
    ),
  );
}

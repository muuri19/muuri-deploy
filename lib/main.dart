import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/modules/not_found_page/views/not_found_page_view.dart';
import 'app/routes/app_pages.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Muhammad Sadri",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      unknownRoute:
          GetPage(name: AppPages.PAGENOTFOUND, page: () => NotFoundPageView()),
      defaultTransition: Transition.noTransition,
    ),
  );
}

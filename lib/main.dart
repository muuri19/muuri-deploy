import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/modules/not_found_page/views/not_found_page_view.dart';
import 'app/routes/app_pages.dart';

void main() {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Muhammad Sadri",
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      unknownRoute:
          GetPage(name: AppPages.PAGENOTFOUND, page: () => NotFoundPageView()),
      defaultTransition: Transition.noTransition,
    ),
  );
}

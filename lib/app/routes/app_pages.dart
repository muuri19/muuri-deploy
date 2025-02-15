import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/not_found_page/bindings/not_found_page_binding.dart';
import '../modules/not_found_page/views/not_found_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const PAGENOTFOUND = Routes.NOT_FOUND_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NOT_FOUND_PAGE,
      page: () => const NotFoundPageView(),
      binding: NotFoundPageBinding(),
    ),
  ];
}

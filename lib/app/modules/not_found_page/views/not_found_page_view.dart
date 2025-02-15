import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/not_found_page_controller.dart';

class NotFoundPageView extends GetView<NotFoundPageController> {
  const NotFoundPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            width: 500,
            child: Lottie.asset('assets/json/404.json'),
          ),
          GestureDetector(
              onTap: () {
                Get.back();
              },
              child: FaIcon(
                FontAwesomeIcons.circleChevronLeft,
                size: 50,
              ))
        ],
      ),
    ));
  }
}

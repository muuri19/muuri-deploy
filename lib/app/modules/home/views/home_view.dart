import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:marquee/marquee.dart';
import 'package:muuri_app/app/modules/home/widgets/footer_bio.dart';

import '../../../constants/color.dart';
import '../controllers/home_controller.dart';
import '../widgets/banner_bio.dart';
import '../widgets/button_link_bio.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBio,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BannerBio(),
              LayoutBuilder(builder: (context, constraints) {
                double width;

                if (constraints.maxWidth > 900) {
                  // Desktop
                  width = MediaQuery.of(context).size.width * 0.6;
                } else if (constraints.maxWidth > 600) {
                  // Tablet
                  width = MediaQuery.of(context).size.width * 0.6;
                } else {
                  // Mobile
                  width = MediaQuery.of(context).size.width * 0.8;
                }
                return Container(
                  width: width,
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(color: AppColors.white, width: 2),
                        right: BorderSide(color: AppColors.white, width: 2)),
                  ),
                  child: Marquee(
                    text:
                        'From sunrise to sunset, we craft lines of code, building ideas into reality. But when the night falls, the battlefield calls—precision, strategy, and teamwork take over as we clutch rounds and claim victories. Code by day, dominate by night—because greatness never sleeps!',
                    style: TextStyle(color: AppColors.white),
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                );
              }),
              ButtonLinkBio(
                title: "Saweria",
                icon: FontAwesomeIcons.burger,
                urlBio: 'https://saweria.co/muuri',
              ),
              ButtonLinkBio(
                title: "Instagram",
                icon: FontAwesomeIcons.instagram,
                urlBio: 'https://www.instagram.com/muuri._',
              ),
              ButtonLinkBio(
                title: "Github",
                icon: FontAwesomeIcons.github,
                urlBio: 'https://github.com/muuri19',
              ),
              Container(
                padding: EdgeInsets.only(top: 25),
                width: MediaQuery.of(context).size.width * 0.4,
                child: Divider(
                  height: 1,
                  color: AppColors.white,
                ),
              ),
              FooterBio()
            ],
          ),
        ),
      ),
    );
  }
}

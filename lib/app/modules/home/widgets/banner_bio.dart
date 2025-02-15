import 'package:flutter/material.dart';
import '../../../constants/color.dart';

class BannerBio extends StatelessWidget {
  const BannerBio({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
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
        padding: EdgeInsets.all(5),
        width: width,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.white, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                  image: AssetImage("assets/images/banner.png"),
                  fit: BoxFit.cover)),
        ),
      );
    });
  }
}

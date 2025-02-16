import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/color.dart';

class ButtonLinkBio extends StatelessWidget {
  final String title;
  final IconData icon;
  final String urlBio;
  const ButtonLinkBio(
      {super.key,
      required this.title,
      required this.icon,
      required this.urlBio});

  void _launchUrl() {
    launchUrl(Uri.parse(urlBio));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width;
        double height;
        double fontSize;
        double iconLeadingSize;
        double iconActionSize;

        if (constraints.maxWidth > 900) {
          // Desktop
          width = MediaQuery.of(context).size.width * 0.6;
          height = 60;
          fontSize = 12;
          iconActionSize = 15;
          iconLeadingSize = 24;
        } else if (constraints.maxWidth > 600) {
          // Tablet
          width = MediaQuery.of(context).size.width * 0.6;
          height = 60;
          fontSize = 12;
          iconActionSize = 15;
          iconLeadingSize = 24;
        } else {
          // Mobile
          width = MediaQuery.of(context).size.width * 0.8;
          height = 45;
          fontSize = 12;
          iconActionSize = 10;
          iconLeadingSize = 18;
        }

        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: _launchUrl,
            child: Container(
              width: width,
              height: height,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: AppColors.buttonBio,
                  borderRadius: BorderRadius.circular(8),
                  border:
                      Border.all(color: AppColors.borderButtonBio, width: 2),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.borderButtonBio, offset: Offset(4, 4))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FaIcon(
                    icon,
                    color: AppColors.white,
                    size: iconLeadingSize,
                  ),
                  Text(
                    title,
                    style: TextStyle(color: AppColors.white),
                  ),
                  FaIcon(
                    FontAwesomeIcons.upRightFromSquare,
                    color: AppColors.white,
                    size: iconActionSize,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

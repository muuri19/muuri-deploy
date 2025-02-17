import 'package:flutter/material.dart';
import '../../../constants/color.dart';

class ButtonItemChart extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ButtonItemChart({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          
          decoration: BoxDecoration(
              color: AppColors.buttonBio,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.borderButtonBio, width: 2),
              boxShadow: [
                BoxShadow(
                    color: AppColors.borderButtonBio, offset: Offset(4, 4))
              ]),
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}

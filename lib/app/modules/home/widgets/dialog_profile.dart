import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/color.dart';

class DialogProfile extends StatelessWidget {
  const DialogProfile({super.key});

  final String name = "Muuri";
  final String birthDate = "15 Agustus 2000";
  final String gender = "Laki-laki";
  final String address = "Bandung, Indonesia";
  final String phone = "+62 822-6821-5563";
  final String university = "Telkom University";
  final String major = "Informatika";
  final String semester = "Semester 6";
  final String hobby = "Ngoding, Gaming";
  final String motto = "Terus belajar dan berkembang!";
  final String profileImage = "assets/images/profile.jpg";

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double fontSizeTitle;
      double fontSizeValue;
      double width;
      if (constraints.maxWidth > 900) {
        fontSizeValue = 14;
        fontSizeTitle = 12;
        width = MediaQuery.of(context).size.width * 0.5;
      } else {
        width = MediaQuery.of(context).size.width * 0.8;
        fontSizeValue = 12;
        fontSizeTitle = 10;
      }

      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: width,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(profileImage),
                ),
                const SizedBox(height: 10),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  motto,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildProfileItem("Nama Lengkap", name, fontSizeValue,
                              fontSizeTitle),
                          _buildProfileItem("Tanggal Lahir", birthDate,
                              fontSizeValue, fontSizeTitle),
                          _buildProfileItem(
                              "Alamat", address, fontSizeValue, fontSizeTitle),
                          _buildProfileItem(
                              "No. HP", phone, fontSizeValue, fontSizeTitle),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildProfileItem("Universitas", university,
                              fontSizeValue, fontSizeTitle),
                          _buildProfileItem(
                              "Jurusan", major, fontSizeValue, fontSizeTitle),
                          _buildProfileItem("Semester", semester, fontSizeValue,
                              fontSizeTitle),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () => Get.back(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text("Tutup",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _buildProfileItem(
      String title, String value, double fontSizeValue, double fontSizeTitle) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: fontSizeTitle),
      ),
      subtitle: Text(
        value,
        style: TextStyle(fontSize: fontSizeValue),
      ),
    );
  }
}

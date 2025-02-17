import 'package:get/get.dart';
import 'package:muuri_app/app/modules/home/widgets/dialog_profile.dart';

class HomeController extends GetxController {
  void showProfileDialog() {
    Get.dialog(
      DialogProfile(),
    );
  }
}

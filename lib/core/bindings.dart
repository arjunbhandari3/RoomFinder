import 'package:roomfinder/core/controllers/auth_controller.dart';
import 'package:roomfinder/core/controllers/root_controller.dart';
import 'package:roomfinder/core/controllers/theme_controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put<ThemeController>(ThemeController(), permanent: true);
    Get.put<AuthController>(AuthController(), permanent: true);
    Get.lazyPut<RootController>(() => RootController());
  }
}

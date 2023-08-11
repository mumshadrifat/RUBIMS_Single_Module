import 'package:get/get.dart';
import 'package:lged_inspection/app/modules/user_profile/controllers/user_profile_controller.dart';

import '../../../data/repository/user_repo.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(loginRepo: Get.find()),
    );
    Get.lazyPut(() =>UserRepo(apiClient: Get.find()));

  }
}

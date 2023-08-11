import 'package:get/get.dart';
import 'package:lged_inspection/app/modules/login/controllers/login_controller.dart';


import '../../conditional_Inspection_page/controllers/conditional_inspection_page_controller.dart';
import '../../structure_inventory/controllers/structure_inventory_controller.dart';
import '../controllers/user_profile_controller.dart';


class UserProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserProfileController>(
      () => UserProfileController(userRepo: Get.find()),
    );
    Get.put(ConditionalInspectionPageController());

    Get.put(LoginController(loginRepo: Get.find()));
    Get.put(StructureInventoryController());
  }
}

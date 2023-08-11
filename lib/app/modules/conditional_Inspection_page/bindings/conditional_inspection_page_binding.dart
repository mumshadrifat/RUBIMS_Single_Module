import 'package:get/get.dart';
import 'package:lged_inspection/app/modules/user_profile/controllers/user_profile_controller.dart';

import '../../structure_inventory_Save_Data/controllers/structure_inventory_save_data_controller.dart';
import '../controllers/conditional_inspection_page_controller.dart';

class ConditionalInspectionPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConditionalInspectionPageController>(
      () => ConditionalInspectionPageController(),
    );
    Get.put(UserProfileController(userRepo: Get.find()));

  }
}

import 'package:get/get.dart';

import '../../user_profile/controllers/user_profile_controller.dart';
import '../controllers/structure_inventory_controller.dart';

class StructureInventoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StructureInventoryController>(
      () => StructureInventoryController(),
    );
    Get.put(UserProfileController(userRepo: Get.find()));
  }
}

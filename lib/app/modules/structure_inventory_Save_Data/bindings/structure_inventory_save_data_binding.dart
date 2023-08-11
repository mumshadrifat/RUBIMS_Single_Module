import 'package:get/get.dart';

import '../controllers/structure_inventory_save_data_controller.dart';

class StructureInventorySaveDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StructureInventorySaveDataController>(
      () => StructureInventorySaveDataController(),
    );
  }
}

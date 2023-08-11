import 'package:get/get.dart';
import 'package:lged_inspection/app/modules/inventoryInspection/controllers/home_controller.dart';

import '../../conditional_Inspection_page/controllers/conditional_inspection_page_controller.dart';
import '../../structure_inventory/controllers/structure_inventory_controller.dart';
import '../../structure_inventory_Save_Data/controllers/structure_inventory_save_data_controller.dart';
import '../controllers/inventory_inspection_controller.dart';

class InventoryInspectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InventoryInspectionController>(
      () => InventoryInspectionController(),
    );
    Get.put(StructureInventoryController());
    Get.put(StructureInventorySaveDataController());
    Get.put(HomeController());
  }
}

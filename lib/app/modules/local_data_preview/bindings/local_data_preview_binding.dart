import 'package:get/get.dart';

import '../../conditional_Inspection_page/controllers/conditional_inspection_page_controller.dart';
import '../controllers/local_data_preview_controller.dart';

class LocalDataPreviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalDataPreviewController>(
      () => LocalDataPreviewController(),
    );
    Get.put(ConditionalInspectionPageController());
  }
}

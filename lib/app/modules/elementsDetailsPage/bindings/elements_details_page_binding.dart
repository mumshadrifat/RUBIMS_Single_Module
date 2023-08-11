import 'package:get/get.dart';

import '../controllers/elements_details_page_controller.dart';

class ElementsDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ElementsDetailsPageController>(
      () => ElementsDetailsPageController(),
    );
  }
}

import 'package:get/get.dart';

import '../modules/conditional_Inspection_page/bindings/conditional_inspection_page_binding.dart';
import '../modules/conditional_Inspection_page/views/conditional_inspection_page_view.dart';
import '../modules/elementsDetailsPage/bindings/elements_details_page_binding.dart';
import '../modules/elementsDetailsPage/views/elements_details_page_view.dart';
import '../modules/inventoryInspection/bindings/inventory_inspection_binding.dart';
import '../modules/inventoryInspection/views/inventory_inspection_view.dart';
import '../modules/local_data_preview/bindings/local_data_preview_binding.dart';
import '../modules/local_data_preview/views/local_data_preview_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/structure_inventory/bindings/structure_inventory_binding.dart';
import '../modules/structure_inventory/views/structure_inventory_view.dart';
import '../modules/structure_inventory_Save_Data/bindings/structure_inventory_save_data_binding.dart';
import '../modules/structure_inventory_Save_Data/views/structure_inventory_save_data_view.dart';
import '../modules/test/bindings/test_binding.dart';
import '../modules/test/views/test_view.dart';
import '../modules/user_profile/bindings/user_profile_binding.dart';
import '../modules/user_profile/views/user_profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.CONDITIONAL_INSPECTION_PAGE,
      page: () => ConditionalInspectionPageView(),
      binding: ConditionalInspectionPageBinding(),
    ),
    GetPage(
      name: _Paths.USER_PROFILE,
      page: () => UserProfileView(),
      binding: UserProfileBinding(),
    ),
    GetPage(
      name: _Paths.STRUCTURE_INVENTORY,
      page: () => const StructureInventoryView(),
      binding: StructureInventoryBinding(),
    ),
    GetPage(
      name: _Paths.LOCAL_DATA_PREVIEW,
      page: () => LocalDataPreviewView(),
      binding: LocalDataPreviewBinding(),
    ),
    GetPage(
      name: _Paths.ELEMENTS_DETAILS_PAGE,
      page: () => ElementsDetailsPageView(),
      binding: ElementsDetailsPageBinding(),
    ),
    GetPage(
      name: _Paths.INVENTORY_INSPECTION,
      page: () => InventoryInspectionView(),
      binding: InventoryInspectionBinding(),
    ),
    GetPage(
      name: _Paths.STRUCTURE_INVENTORY_SAVE_DATA,
      page: () => StructureInventorySaveDataView(),
      binding: StructureInventorySaveDataBinding(),
    ),
    GetPage(
      name: _Paths.TEST,
      page: () => const TestView(),
      binding: TestBinding(),
    ),
  ];
}

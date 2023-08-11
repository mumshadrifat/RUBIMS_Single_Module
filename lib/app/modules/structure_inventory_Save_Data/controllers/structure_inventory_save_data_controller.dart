import 'dart:convert';

import 'package:get/get.dart';

import '../../../utils/memory_management.dart';

class StructureInventorySaveDataController extends GetxController {
  //TODO: Implement StructureInventorySaveDataController
  RxString structureIdSaveData="".obs;
  final count = 0.obs;
  @override
  void onInit() {

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

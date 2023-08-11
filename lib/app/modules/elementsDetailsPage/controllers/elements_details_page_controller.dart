import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lged_inspection/app/model/inspection_post_model.dart';

import '../../../data/database_helper/databse_helper.dart';
import '../../conditional_Inspection_page/model/getCSListResponse.dart';

class ElementsDetailsPageController extends GetxController {
  //TODO: Implement ElementsDetailsPageController

  final count = 0.obs;
  var q6list =[];
  var q7list =[];

  var repairRehabilitationReNewConstruction =['Embankment Slopes of Approach Roads',
    'Protective works of Abutment including approaches',
    'Pavement of approaches',
    'Wearing course',
    'Expansion joint/Nosing/Sealing',
    'Checker Plates, Nut- Bolts',
    'Wheel guard, Walkway',
  ].obs;
  var repairReplacementNewConstruction =['Rail Bar, Rail Post',
    'Guide Post, Traffic Sign, Electric Post',
    'Surface of Wing Wall and Abutment Wall',
    'Guide Post, Traffic Sign, Road Marking, Electric Post',
    'Railing, Rail Posts, Wheel guard',
    'Railing, Rail Posts, Wheel guard_upper',
  ].obs;

  var cleaning =['Railing, Rail Posts, Wheel guard',
    'Surface of Abutment, End wall Intermediate wall & Wing Wall, Weep Holes, Drain outlet',
    'Water flow of Slab/ Box/ P- Culverts'].obs;
  var clearing =['Obstruction of Water Ways'].obs;
  var justcheck=''.obs;
  var csList =<CSListData>[].obs;
  var selectCSList =''.obs;

  final pageController = PageController(initialPage: 0);
  @override
  void onInit() async{
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

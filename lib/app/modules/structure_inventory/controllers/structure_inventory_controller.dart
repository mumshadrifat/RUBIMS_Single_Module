import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../model/Response/structure_list_response.dart';
import '../../user_profile/controllers/user_profile_controller.dart';



class StructureInventoryController extends GetxController {
  //TODO: Implement StructureInventoryController
     RxString structureId="".obs;
     var sharedUsername=''.obs;
     var sharedEmail=''.obs;
     var structureVal=''.obs;
     var divisionName =''.obs;


     void setSharedPrefData() async{

       SharedPreferences prefs = await SharedPreferences.getInstance();
       prefs.setString('divisionName', Get.find<UserProfileController>().divisonName.toString());
       print(prefs.setString('divisionName', Get.find<UserProfileController>().divisonName.toString()));
     }
     void valuePrint()async{
       SharedPreferences prefs = await SharedPreferences.getInstance();
       print( sharedUsername.value);
       print( sharedEmail.value);

       var myItemsAsJsonString = prefs.getString('structureList');

       var myItems = json.decode(myItemsAsJsonString!);
       print(myItems);
       print( divisionName.value);
     }



  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    // getSharedPrefData();
    // setSharedPrefData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

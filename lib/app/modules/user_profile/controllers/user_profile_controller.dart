import 'dart:convert';

import 'package:get/get.dart';
import 'package:lged_inspection/app/model/Response/district_model.dart';
import 'package:lged_inspection/app/model/Response/division_response_model.dart';
import 'package:lged_inspection/app/model/Response/road_type_response.dart';
import 'package:lged_inspection/app/model/Response/structure_list_response.dart';
import 'package:lged_inspection/app/model/Response/user_road_response.dart';
import 'package:lged_inspection/app/modules/login/controllers/login_controller.dart';

import '../../../data/repository/user_repo.dart';
import '../../../model/Response/structure_inventory_response.dart';
import '../../../model/Response/upazila_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/memory_management.dart';

class UserProfileController extends GetxController {
  //TODO: Implement UserProfileController
  UserRepo userRepo;

  UserProfileController({required this.userRepo});

  // List<Result> _userResponseList = [];
  RxList<Result> userResponseList = <Result>[].obs;

  RxList<Divisions> divisionList = <Divisions>[].obs;
  RxList<Divisions> divisionListChecked = <Divisions>[].obs;
  RxList<District> districtList = <District>[].obs;
  RxList<Upazila> upazilaList = <Upazila>[].obs;
  RxList<RoadType> roadTypeList = <RoadType>[].obs;

  late StructureInventoryData inventoryData;
  // RxObjectMixin<StructureInventoryData>  inventoryData;
  RxList<Structures> structureList = <Structures>[].obs;
  List<String> structureStringList = [];
  RxList<Structures> dummyList = <Structures>[].obs;
  RxString divisonName = "".obs;
  RxString districtName = "".obs;
  RxString upzilaName = "".obs;
  RxString roadCode = "".obs;


  ///methods are deploying from here
  Future<void> getStructureInventory(int structureId) async {
    /*   late AuthResponseModel authResponseModel;*/

    Response response = await userRepo.getStructureInventory(structureId);
    if (response.statusCode == 200) {
      print("success Inventory");
      print(response.body.toString());

      inventoryData = StructureInventoryResponse.fromJson(response.body)
          .structureInventoryData!;
      print("dinventory========str${inventoryData.structure}");
      update();
    } else {
      print("Inventory Failed");
    }
  }

  Future<void> getRoadTypeList() async {
    /*   late AuthResponseModel authResponseModel;*/

    Response response = await userRepo.getRoadType();
    if (response.statusCode == 200) {
      print("Road type loaded");
      print(response.body.toString());
      roadTypeList.value = await RoadTypeModel.fromJson(response.body)
          .result!
          .toList(growable: true);

      print("Upazila length==>${upazilaList.length}");
      update();
    } else {
      print("RoadList Failed");
    }
  }

  Future<void> getDivisionList() async {
    /*   late AuthResponseModel authResponseModel;*/

    Response response = await userRepo.getDivisonList();
    if (response.statusCode == 200) {
      print("Division loaded");
      print(response.body.toString());
      divisionList.value = await DivisionModel.fromJson(response.body)
          .result!
          .toList(growable: true);

      print("Division length==>${divisionList.length}");
      getDivisionCheck();
      update();
    } else {
      print("RoadList Failed");
    }
  }

  getDivisionCheck() {
    print(
        "Usr location============${Get.find<LoginController>().userLocationlist.length}");
    if (Get.find<LoginController>().userLocationlist.length > 0) {
      for (int i = 0;
          i < Get.find<LoginController>().userLocationlist.length;
          i++) {
        if (divisionList[i].value ==
            Get.find<LoginController>().userLocationlist[i].divisionId) {
          divisionListChecked.add(divisionList[i]);
        }
      }
    } else {
      divisionListChecked.value = divisionList;
    }
    print("Checked Division============${divisionListChecked.length}");
  }

  Future<void> getUpazilaList(int districtId) async {
    /*   late AuthResponseModel authResponseModel;*/

    Response response = await userRepo.getUpazilaList(districtId);
    if (response.statusCode == 200) {
      print("success Upazila");
      print(response.body.toString());
      upazilaList.value = await UpazilaModel.fromJson(response.body)
          .result!
          .toList(growable: true);

      print("Upazila length==>${upazilaList.length}");
      update();
    } else {
      print("RoadList Failed");
    }
  }

  Future<void> getDistrictList(int divisionId) async {
    /*   late AuthResponseModel authResponseModel;*/

    Response response = await userRepo.getDistrictList(divisionId);
    if (response.statusCode == 200) {
      print("success District");
      print(response.body.toString());
      districtList.value = await DistrictModel.fromJson(response.body)
          .result!
          .toList(growable: true);

      print("Userresponse length==>${districtList.length}");
      update();
    } else {
      print("RoadList Failed");
    }
  }

  Future<void> getRoadList(int upazilaId, int roadId) async {
    /*   late AuthResponseModel authResponseModel;*/
    //36101
    //5
    Response response = await userRepo.getRoadList(upazilaId, roadId);
    if (response.statusCode == 200) {
      print("success RoadList");
      print(response.body.toString());
      userResponseList.value = await UserRoadResponse.fromJson(response.body)
          .result!
          .toList(growable: true);
      // _userResponseList.addAll(
      //     );
      print("RoadList length==>${userResponseList.length}");
      update();
    } else {
      print("RoadList Failed");
    }
  }

  Future<void> setStructureList(int roadId) async {
    /*   late AuthResponseModel authResponseModel;*/

    Response response = await userRepo.getStrucureList(roadId);
    if (response.statusCode == 200) {
      structureList.value = <Structures>[].obs;
      print("====> StructureList");
      print(response.body.toString());
      structureList.value = (await Structurelist.fromJson(response.body)
          .structures!
          .toList(growable: true));
       var  myItemsAsJsonString = json.encode(structureList.value);
      SharedPreferencesRepository.SetString("structureList", myItemsAsJsonString);
      // prefs.setString('structureList', myItemsAsJsonString)

      //getStructureAsString();
      //print("Structure name=====>${structureList.value[0].text.toString()}");
      update();
    } else {
      print(" Structure failed");
    }
  }

  // getStructureAsString(){
  //  print("split");
  //  print(structureList.length);
  //   //structureStringList = structureList.map((e) => e.text).toList() as RxList<String>;
  //
  //
  //   for(int i=0;i<structureList.length;i++){
  //
  //     structureStringList.add(structureList[i].text!);
  //     print("==========>Structure list item as string${structureStringList[i]}");
  //   }
  //
  // }

  Future<void> setDummyList(int roadId) async {
    /*   late AuthResponseModel authResponseModel;*/

    Response response = await userRepo.getStrucureList(101);
    if (response.statusCode == 200) {
      dummyList.value = <Structures>[].obs;
      print("====> Dummy List==>");
      print(response.body.toString());
      dummyList.value = (await Structurelist.fromJson(response.body)
          .structures!
          .toList(growable: true));
      //print("Structure name=====>${structureList.value[0].text.toString()}");
      update();
    } else {
      print(" Dummy failed");
    }
  }

  final count = 0.obs;
  RxString dropDownValue = "R".obs;

  @override
  void onInit() {
    super.onInit();
    getDivisionList();
    getRoadTypeList();
    //getRoadList(36101, 5);
    //getUpazilaList(11);
    // getDistrictList(222);
    //getRoadList(36101,5);
    //setDummyList(101);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;

  void getUpdate() {
    update();
  }
}

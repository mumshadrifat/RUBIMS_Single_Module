import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';

import '../components/GetComponentsResonse.dart';
import '../components/GetRbmPhyCharspanResponse.dart';
import '../components/GetSubElementDetailsResponse.dart';
import '../model/getChannelRiver_response.dart';
import '../model/getPhysicalInventoryResponse.dart';
import '../model/getTrafficandLoadInfoResponse.dart';
import '../model/identificationLocationResponse.dart';
import '../model/GetPhysicalSelectionListResponse.dart';
import '../model/ChannelAndRiverPostModel.dart';

class InventortProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }



  Future<GetPhysicalSelectionLists> getPhysicalCharacteristics() async{
    //print(id);
    var url = "http://103.245.204.238:8098/api/Rubims/insp-structure/get-inspection-selected-value";
    print(url);
    final response = await get(url);
    if(response.status.hasError){
      return Future.error(response.bodyString!);
    }else{
      print(response.body);
      log(GetPhysicalSelectionLists.fromJson(jsonDecode(response.bodyString!)).toString());
      return GetPhysicalSelectionLists.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<GetPhysicalInventory> getPhysicalInventory(String id) async{
    //print(id);
    var url = "http://103.245.204.238:8098/api/Rubims/insp-structure/get-inspection-structure?id=${id}";
    print(url);
    final response = await get(url);
    if(response.status.hasError){
      return Future.error(response.bodyString!);
    }else{
      print("sddhfuisdhfushdfhsdufhuisdf${response.body.toString()}");
      return GetPhysicalInventory.fromJson(jsonDecode(response.bodyString!));
    }
  }

  //
  // Future<GetRbmPhyCharspanModels> getRbmPhyCharspanModels(String id) async{
  //   //print(id);
  //   var url = "http://103.245.204.238:8098/api/Rubims/insp-structure/get-inspection-structure?id=${id}";
  //   print(url);
  //   final response = await get(url);
  //   if(response.status.hasError){
  //     return Future.error(response.bodyString!);
  //   }else{
  //     print(response.body);
  //     return GetRbmPhyCharspanModels.fromJson(jsonDecode(response.bodyString!));
  //   }
  // }
  //
  // Future<GetSubElementDetailsModels> getSubElementDetailsModels(String id) async{
  //   //print(id);
  //   var url = "http://103.245.204.238:8098/api/Rubims/insp-structure/get-inspection-structure?id=${id}";
  //   print(url);
  //   final response = await get(url);
  //   if(response.status.hasError){
  //     return Future.error(response.bodyString!);
  //   }else{
  //     print(response.body);
  //     return GetSubElementDetailsModels.fromJson(jsonDecode(response.bodyString!));
  //   }
  // }
  // Future<GetComponents> getComponents(String id) async{
  //   //print(id);
  //   var url = "http://103.245.204.238:8098/api/Rubims/insp-structure/get-inspection-structure?id=${id}";
  //   print(url);
  //   final response = await get(url);
  //   if(response.status.hasError){
  //     return Future.error(response.bodyString!);
  //   }else{
  //     print(response.body);
  //     return GetComponents.fromJson(jsonDecode(response.bodyString!));
  //   }
  // }



  Future<GetChannelRiver> getChannelRiver(String id) async{
    //print(id);
    var url = "http://103.245.204.238:8098/api/Rubims/channel-and-river-info/get-channel-and-river-info?id=${id}";
    print(url);
    final response = await get(url);
    if(response.status.hasError){
      return Future.error(response.bodyString!);
    }else{
      print(response.body);
      return GetChannelRiver.fromJson(jsonDecode(response.bodyString!));
    }
  }

  //http://103.245.204.238:8098/api/Rubims/identification/get-identification-location?id=16171
  Future<GetIdentificationAndLocation> getIdentifyLocation(String id) async{
    //print(id);
    var url = "http://103.245.204.238:8098/api/Rubims/identification/get-identification-location?id=${id}";
    print(url);
    final response = await get(url);
    if(response.status.hasError){
      return Future.error(response.bodyString!);
    }else{
      print(response.body);
      return GetIdentificationAndLocation.fromJson(jsonDecode(response.bodyString!));
    }
  }
  Future<GetTrafficandLoadInfo> getTrafficandLoad(String id) async{
    //print(id);
    var url = "http://103.245.204.238:8098/api/Rubims/traffic-loading-info/get-traffic-and-loading-info?id=${id}";
    print(url);
    final response = await get(url);
    if(response.status.hasError){
      return Future.error(response.bodyString!);
    }else{
      print(response.body);
      return GetTrafficandLoadInfo.fromJson(jsonDecode(response.bodyString!));
    }
  }








}

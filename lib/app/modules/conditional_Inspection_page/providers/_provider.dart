import 'dart:convert';

import 'package:get/get.dart';


import '../model/getCSListResponse.dart';
import '../model/getDefectsResponse.dart';
import '../model/getElementsResponse.dart';

class Provider extends GetConnect {
  @override
  // void onInit() {
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  // Future<BridzeType> getBridze() async {
  //   var url = "http://192.168.10.2:8098/api/Rubims/inspection/get-stucture-types";
  //   print(url);
  //   final response = await get(url);
  //   if (response.status.hasError) {
  //     return Future.error(response.bodyString!);
  //   } else {
  //     print(response.body);
  //     return BridzeType.fromJson(jsonDecode(response.bodyString!));
  //   }
  // }

//http://192.168.10.2:8098/api/Rubims/inspection/get-element-list?id=100

  Future<GetElements> getElements(String id) async{
    print(id);
    var url = "http://103.245.204.238:8098/api/Rubims/insp-structure/get-element-detail-by-str-id?id=${id}";
    print(url);
    final response = await get(url);
    if(response.status.hasError){
      return Future.error(response.bodyString!);
    }else{
      print(response.body);
      return GetElements.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<GetDefects> getDefects(String id) async{
     var url = "http://103.245.204.238:8098/api/Rubims/inspection/get-element-deffects?id=${id}";
     print(url);
     final response = await get(url);
     if(response.status.hasError){
       return Future.error(response.bodyString!);
     }
     else{
       print(response.body);
       return GetDefects.fromJson(jsonDecode(response.bodyString!));
     }
  }

  Future<GetCSList> getCSList() async{
    var url ="http://103.245.204.238:8098/api/Rubims/inspection/get-cs-list";
    print(url);
    final response = await get(url);
    if(response.status.hasError){
      return Future.error(response.bodyString!);
    }
    else{
      print(response.body!);
      return GetCSList.fromJson(jsonDecode(response.bodyString!));
    }

  }






}

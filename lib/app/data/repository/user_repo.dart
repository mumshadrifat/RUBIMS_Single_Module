
import 'package:get/get.dart';


import '../../model/login_model.dart';
import '../api/ap_client.dart';

class UserRepo extends GetxService{
  late final ApiClient apiClient;


  UserRepo({  required this.apiClient});

  Future<Response> getRoadList(int upazilaId,int roadTypId){

    //xen.feni
    //lged@1234
    return  apiClient.getRoads("/api/Rubims/selected-value/get-road-selected-value?upazillaId=$upazilaId&roadtypeId=$roadTypId");
  }
  Future<Response> getStrucureList(int roadId){
    //id=101
    return  apiClient.getData("/api/Rubims/inspection/get-stucture-list-by-road?id=$roadId");
  }

  Future<Response> getDistrictList(int divisionId){
    //id=5
    return  apiClient.getData("/api/Rubims/app/get-app-districts-selected-value?divisionId=$divisionId");
  }
  Future<Response> getUpazilaList(int districtId){
    //id=481
    return  apiClient.getData("/api/Rubims/app/get-app-upozilla-selected-value?districtId=$districtId");
  }
  Future<Response> getRoadType(){
    //id=481
    return  apiClient.getData("/api/Rubims/selected-value/get-road--type-selected-value");
  }
  Future<Response> getDivisonList(){
    //id=481
    return  apiClient.getData("/api/Rubims/app/get-app-divisions-selected-value");
  }

  Future<Response> getStructureInventory(int structId){
    //id=5
    return  apiClient.getData("/api/Rubims/inspection/get-stucture-inventory?id=$structId");
  }



}

import 'package:get/get.dart';


import '../../model/login_model.dart';
import '../api/ap_client.dart';
import '../api/api_client2.dart';

class LoginRepo extends GetxService{
  late final ApiClient2 apiClient;


  LoginRepo({  required this.apiClient});

  Future<Response> getLogin(String phoneNumber,String password){

    //xen.feni
    //lged@1234
    return  apiClient.getLogin("/Services/Security/PublicUser/IsValidUser?userName=$phoneNumber&password=$password");
  }
  Future<Response> userData(String userName){
    //id=101
    return  apiClient.getData("/Services/Security/PublicUser/GetData?userName=$userName");
  }


/* saveUserToken(String token) {
    apiClient.token=token;
    apiClient.updateHeader(token);
    return sharedPreferences.setString(AppConstants.TOKEN,token);
   }*/


}
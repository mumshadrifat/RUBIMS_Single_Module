import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lged_inspection/app/data/repository/user_repo.dart';
import 'package:lged_inspection/app/modules/user_profile/controllers/user_profile_controller.dart';

import '../data/api/ap_client.dart';
import '../data/api/api_client2.dart';
import '../data/repository/login_repo.dart';
import '../modules/login/controllers/login_controller.dart';

Future<void> init() async {
  // final sharedPreferences = await SharedPreferences.getInstance();
  // api client
  // Get.lazyPut(() => ApiClient(appBaseUrl: "http://mvs.bslmeiyu.com"));
//  Get.lazyPut(() => ApiClient(appBaseUrl: "http://sso.lged.gov.bd"));



  Get.lazyPut(() => ApiClient2(appBaseUrl: "http://sso.lged.gov.bd"),
      fenix: true);
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://103.245.204.238:8098"),
      fenix: true);

  //Repositories

  Get.lazyPut(() => LoginRepo(apiClient: Get.find()), fenix: true);
  Get.lazyPut(() => UserRepo(apiClient: Get.find()), fenix: true);


  //controller

  Get.lazyPut(() => LoginController(loginRepo: Get.find()), fenix: true);
  Get.lazyPut(() => UserProfileController(userRepo: Get.find()), fenix: true);
}

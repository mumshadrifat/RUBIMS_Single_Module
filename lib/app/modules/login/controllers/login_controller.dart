import 'package:get/get.dart';

import '../../../data/repository/login_repo.dart';
import '../../../model/Response/user_info.dart';
import '../../../model/Response/user_road_response.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final LoginRepo loginRepo;
  final count = 0.obs;
  RxBool phoneNumberValid = false.obs;

  RxBool passwordValid = false.obs;

  LoginController({required this.loginRepo});

  RxList<UserLocations> userLocationlist = <UserLocations>[].obs;
  RxString userName = "Mumshad Ahm".obs;
  RxString userEmail = "mrifat@gmail.com".obs;

  bool _isLoading = false;
  RxBool _isloaded = false.obs;

  List<Result> userResponseList = [];

  bool get isLoading => _isLoading;

  bool get isLoaded => _isloaded.value;

  login(String phoneNumber, String passwordText) async {
    _isLoading = true;

    Response response = await loginRepo.getLogin(phoneNumber, passwordText);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("Login ====> success");
      // print(response.body.toString());

      if (response.body.toString() == "true") {
        _isloaded.value = true;
        print("password and email matched==>$_isloaded");
      }

      userInfo(phoneNumber);
      if (Get.find<LoginController>().isLoaded) {
        print("IfBody");
        // getRoadList(36101, 5);
        getLocationList(phoneNumber);
        Get.toNamed(Routes.USER_PROFILE);
      }
    } else {
      print("failed");
    }
    update();
  }

  userInfo(String tuserName) async {
    Response response = await loginRepo.userData(tuserName);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("UserInfo ====> success");
      //  print(response.body.toString());

      userName.value = response.body["DisplayName"].toString();
      userEmail.value = response.body["Email"].toString();
      update();

      // userResponseList.value = await UserRoadResponse.fromJson(response.body)
      //     .result!
      //     .toList(growable: true);

    } else {
      print("failed");
    }
    update();
  }

  Future<void> getLocationList(String tuserName) async {
    /*   late AuthResponseModel authResponseModel;*/

    Response response = await loginRepo.userData(tuserName);
    if (response.statusCode == 200) {
      print("=======>Locations");
      print(response.body.toString());
      userLocationlist.value = await UserInfo.fromJson(response.body)
          .userLocations!
          .toList(growable: true);

      print("Upazila length==>${userLocationlist.length}");
      update();
    } else {
      print("RoadList Failed");
    }
  }

  @override
  void onInit() {
    super.onInit();
    //Firebase.initializeApp();

    // getRoadList(36101, 5);
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

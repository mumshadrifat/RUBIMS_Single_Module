import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lged_inspection/app/common_widget/button.dart';
import 'package:lged_inspection/app/common_widget/text.dart';
import 'package:lged_inspection/app/modules/login/components/components.dart';
import 'package:lged_inspection/app/utils/colors.dart';
import 'package:lged_inspection/app/utils/dimens.dart';

import '../../../model/login_model.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final phoneNumber = TextEditingController()..text='admin';
  final passwordText = TextEditingController()..text='lged@1234';

  //valid Text
  String phoneNumberValidText = "Please enter your email address";
  String passwordValidText = "Please enter your password";

  //valid


  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userController;
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.background,
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                left: Dimension.width20,
                right: Dimension.width20,
                top: Dimension.height10,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimension.width20 + Dimension.width20,
                        right: Dimension.width20 + Dimension.width20,
                        bottom: Dimension.height30),
                    height: Dimension.height45 * 6,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/image/logo.png"),
                          fit: BoxFit.scaleDown),
                      borderRadius: BorderRadius.circular(Dimension.radius20),
                    ),
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                Obx(() =>   LoginEditField(
                  controller: phoneNumber,
                  hintText: "Email/Mobile",
                  icon: Icons.email,
                  errorText:controller.phoneNumberValid==true? phoneNumberValidText:null,

                ),),
                  SizedBox(
                    height: Dimension.height10,
                  ),
                  Obx(() => LoginEditField(
                    controller: passwordText,
                    hintText: "Password",
                    icon: Icons.key,
                    postIcon: Icons.visibility_off,
                    errorText: controller.passwordValid==true?passwordValidText:null,

                  ),),
                  SizedBox(
                    height: Dimension.height10,
                  ),
                  /* Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.INSPECTION_PAGE_VIEW_CONTROLLER);
                    },
                    child: Container(
                      height: Dimension.height30 + Dimension.height5,
                      width: Dimension.width30 * 4,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text("Login"),
                      ),
                    ),
                  )
                ],
              ),*/
                  SizedBox(
                    height: Dimension.height15,
                  ),
                  InkWell(
                    onTap: () {

                      double width = MediaQuery.of(context).size.width;
                      double height = MediaQuery.of(context).size.height;

                        print(width);
                        print(height);
                      if(phoneNumber.text.length>0){
                        controller.phoneNumberValid.value=false;
                      }
                      else{
                        controller.phoneNumberValid.value=true;
                      }
                      if(passwordText.text.length>0){
                        controller.passwordValid.value=false;
                      }
                      else{
                        controller.passwordValid.value=true;
                      }

                      if(controller.passwordValid.value==false && controller.phoneNumberValid.value==false ){
                        Get.find<LoginController>()
                           .login(phoneNumber.text, passwordText.text);
                      }


                      // phoneNumber.text==null?phoneNumberValid.value=false:phoneNumberValid.value=true;
                      // passwordText.text==null?passwordValid.value=false:passwordValid.value=true;

                    },
                    child: Container(
                        child: CustomButton(
                      height: Dimension.height30 +
                          Dimension.height10 +
                          Dimension.height5,
                      width: double.maxFinite,
                      text: "Login",
                      radius: Dimension.radius30,
                      backgroundColour: AppColors.primary_color,
                      textColour: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  SizedBox(
                    height: Dimension.height10,
                  ),
                  BigText(
                      text: "Forget Password?",
                      color: AppColors.secondary,
                      size: Dimension.mediumFont)
                ],
              ),
            ),
          )),
    );
  }
}

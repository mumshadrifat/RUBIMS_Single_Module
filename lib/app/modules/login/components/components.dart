import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lged_inspection/app/utils/dimens.dart';

class LoginEditField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final IconData? postIcon;
  TextEditingController? controller;
  String? errorText;
  // RxBool? validate=false.obs;

  LoginEditField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.postIcon,
     this.controller,
    this.errorText,
   // this.validate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(

      controller: controller,
      obscureText: false,
      decoration: InputDecoration(
        filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.only(left:Dimension.width20, top:Dimension.height15,bottom: Dimension.height15,right:Dimension.width20 ),
          hintText: hintText,
          errorText:errorText,

          suffixIcon: Icon(postIcon),
          prefixIcon: Container(
              margin: EdgeInsets.only(left: Dimension.width20,top: Dimension.height5,bottom: Dimension.height5,right:Dimension.width20 ),
              decoration: BoxDecoration(
                 ),
              child: Icon(icon)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          )),
    );
  }
}

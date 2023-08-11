import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lged_inspection/app/common_widget/text.dart';
import 'package:lged_inspection/app/utils/dimens.dart';

import '../model/Response/user_road_response.dart';
import '../modules/user_profile/controllers/user_profile_controller.dart';

class DropDown extends StatelessWidget {
  String? text;
  double? heigh;
  double? width;
  Color? iconColor;
  IconData? icon;
  // final UserProfileController controller =Get.put(UserProfileController(userRepo: null));
 List<Result>? list;

  var ass = "Road Name".obs;
  RxBool dropClicked = false.obs;

  DropDown(
      {Key? key,
      this.text,
      this.width,
      this.icon,
      this.heigh,
      this.iconColor,
      this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: EdgeInsets.only(
            right: Dimension.width15,
            left: Dimension.width15,
            top: Dimension.height5,
            bottom: Dimension.height5),
        height: Dimension.height20 * 2,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimension.radius30),
          border: Border.all(color: Colors.black),
          /*   boxShadow:[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 2,

                      )

                    ],*/
        ),
        child: Row(
          children: [
            Obx(
              () => Text(ass.value.toString()),
            ),
            Expanded(
                child: SizedBox(
              width: 10,
            )),
            DropdownButton<String>(
              // hint: Text(text!),
              //isExpanded: true,

              items: list?.map((Result userResponse) {
                return DropdownMenuItem<String>(

                  value: userResponse.value.toString(),
                  child: SingleChildScrollView(child: Text(userResponse.text.toString())),
                );

              }).toList(),
              onChanged: (value) {
                ass.value = value!;
                print(value);
                print(ass.value);
                dropClicked.value = true;
                Get.find<UserProfileController>().setStructureList(101);
                print(dropClicked);
              },
            ),
          ],
        ));
  }
}

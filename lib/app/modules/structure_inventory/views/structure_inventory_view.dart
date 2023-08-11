import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lged_inspection/app/common_widget/app_bar.dart';
import 'package:lged_inspection/app/modules/user_profile/controllers/user_profile_controller.dart';
import 'package:lged_inspection/app/utils/dimens.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common_widget/button.dart';
import '../../../common_widget/text.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../controllers/structure_inventory_controller.dart';

class StructureInventoryView extends GetView<StructureInventoryController> {
  const StructureInventoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // UserProfileController userProfileController =
    //     Get.find<UserProfileController>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: CustomAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: BigText(
                  text:
                      "${Get.find<UserProfileController>().divisonName} > ${Get.find<UserProfileController>().districtName} > ${Get.find<UserProfileController>().upzilaName} > ${Get.find<UserProfileController>().roadCode}",
                  size: Dimension.smallFont + 2),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: BigText(
                  text:
                      "Search Reasult  ${Get.find<UserProfileController>().structureList.length}",
                )),

            SizedBox(
              height: 20,
            ),

            Obx(
              () => Expanded(
                child: ListView.builder(
                    itemCount:
                        Get.find<UserProfileController>().structureList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        margin:
                            EdgeInsets.only(bottom: 10, left: 10, right: 10),

                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    color: AppColors.background,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(
                                            "assets/image/structure.png")),
                                  )
                                ]),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap:() async{
                                    SharedPreferences prefs = await SharedPreferences.getInstance();
                                    prefs.setString('CSI-APP-USERNAME', Get.find<UserProfileController>().structureList[index].sTRUCTID!);
                                    prefs.setString('CSI-APP-EMAIL', Get.find<UserProfileController>().structureList[index].cHAINAGE!);
                                    var  myItemsAsJsonString = json.encode(Get.find<UserProfileController>().structureList);
                                    prefs.setString('structureList', myItemsAsJsonString);


                                  },
                                  child: BigText(
                                    text:
                                        // "Structure: ${userProfileController.inventoryData.structure.toString()}",
                                        "Code:${Get.find<UserProfileController>().structureList[index].sTRUCTID}",
                                    fontWeight: FontWeight.bold,
                                    size: Dimension.mediumFont,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                if (Get.find<UserProfileController>().structureList[index]
                                        .sTRUCTURETYPE!.length >
                                    12)
                                  BigText(
                                    text:
                                        // "str-id:${userProfileController.inventoryData.sTRUCTID.toString()}",
                                        "Type:${Get.find<UserProfileController>().structureList[index].sTRUCTURETYPE?.substring(0, 12)}",
                                    fontWeight: FontWeight.bold,
                                    size: Dimension.mediumFont,
                                  )
                                else
                                  BigText(
                                    text:
                                        // "str-id:${userProfileController.inventoryData.sTRUCTID.toString()}",
                                        "Type:${Get.find<UserProfileController>().structureList[index].sTRUCTURETYPE}",
                                    fontWeight: FontWeight.bold,
                                    size: Dimension.mediumFont,
                                  ),
                                SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap:(){
                                    controller.valuePrint();
                                  },
                                  child: BigText(
                                    text:
                                        // "c.date:${userProfileController.inventoryData.constructionYear.toString()}",
                                        "Chainage:${Get.find<UserProfileController>().structureList[index].cHAINAGE}",
                                    fontWeight: FontWeight.bold,
                                    size: Dimension.mediumFont,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                BigText(
                                  text:
                                      // "Chainage:${userProfileController.inventoryData.cHAINAGE.toString()}",
                                      "Length:${Get.find<UserProfileController>().structureList[index].tOTALLENGTH}",
                                  size: Dimension.mediumFont,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                BigText(
                                  text:
                                      // "Chainage:${userProfileController.inventoryData.cHAINAGE.toString()}",
                                      "Year:${Get.find<UserProfileController>().structureList[index].constructionYear}",
                                  size: Dimension.mediumFont,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                            Column(

                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {

                                    controller.structureId.value =
                                    Get.find<UserProfileController>()
                                            .structureList[index].sTRUCTID!;
                                    print(" St${controller.structureId.value}");

                                    Get.toNamed(
                                        Routes.CONDITIONAL_INSPECTION_PAGE);
                                  },
                                  child: CustomButton(
                                    height: 40,
                                    width: 80,
                                    text: "Inspect",
                                    radius: 10,
                                    backgroundColour: AppColors.primary_color,
                                    fontWeight: FontWeight.bold,
                                    textColour: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap:(){
                                    controller.structureId.value =
                                    Get.find<UserProfileController>()
                                        .structureList[index].sTRUCTID!;
                                    print(" St${controller.structureId.value}");
                                    Get.toNamed(Routes.INVENTORY_INSPECTION,);
                                  },
                                  child: CustomButton(
                                    height: 40,
                                    width: 80,
                                    text: "Inventory",
                                    radius: 10,
                                    backgroundColour: AppColors.secondary,
                                    fontWeight: FontWeight.bold,
                                    textColour: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        // ClipRRect(
                        //     borderRadius: BorderRadius.circular(10),
                        //     child: Image.network(controller.userList[index].avatar.toString())),
                      );
                    }),
              ),
            )
            // Container(
            //   padding: EdgeInsets.all(20),
            //   margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            //   height: 150,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Row(
            //             children: [
            //               Icon(Icons.construction),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               BigText(
            //                 text:
            //                 // "Structure: ${userProfileController.inventoryData.structure.toString()}",
            //                 "Sturcture",
            //                 fontWeight: FontWeight.bold,
            //                 size: Dimension.smallFont,
            //               ),
            //             ],
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Row(
            //             children: [
            //               Icon(Icons.numbers),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               BigText(
            //                 text:"str-id",
            //                 // "str-id:${userProfileController.inventoryData.sTRUCTID.toString()}",
            //                 //  "122",
            //                 fontWeight: FontWeight.bold,
            //                 size: Dimension.smallFont,
            //               ),
            //             ],
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Row(
            //             children: [
            //               Icon(Icons.date_range),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               BigText(
            //                 text:
            //                 "c.date:${userProfileController.inventoryData.constructionYear.toString()}",
            //                 fontWeight: FontWeight.bold,
            //                 size: Dimension.smallFont,
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Row(
            //             children: [
            //               Icon(Icons.social_distance),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               BigText(
            //                 text:
            //                 "Chainage:${userProfileController.inventoryData.cHAINAGE.toString()}",
            //                 size: Dimension.smallFont,
            //             fontWeight: FontWeight.bold,
            //               ),
            //             ],
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Row(
            //             children: [
            //               Icon(Icons.construction),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               BigText(
            //                 text:
            //                 "S.type:${userProfileController.inventoryData.sTRUCTURETYPE.toString()}",
            //                 size: Dimension.smallFont,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ],
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Row(
            //             children: [
            //               Icon(Icons.height),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               BigText(
            //                 text:
            //                 "Lenght:${userProfileController.inventoryData.tOTALLENGTH.toString()}",
            //                 size: Dimension.smallFont,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ],
            //           ),
            //           SizedBox(
            //             height: 10,
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            //

            // ),
          ],
        ),
      ),
    );
  }
}

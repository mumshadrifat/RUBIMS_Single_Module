import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lged_inspection/app/utils/dimens.dart';

import '../../../common_widget/app_bar.dart';
import '../../../common_widget/button.dart';
import '../../../common_widget/text.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../../../utils/memory_management.dart';
import '../controllers/structure_inventory_save_data_controller.dart';

class StructureInventorySaveDataView
    extends GetView<StructureInventorySaveDataController> {
  @override
  Widget build(BuildContext context) {

    var myItemsAsJsonString = SharedPreferencesRepository.getString('structureList');
    var myItems = json.decode(myItemsAsJsonString);
    return Scaffold(
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
                "${SharedPreferencesRepository.getString("Divison")} > ${SharedPreferencesRepository.getString("District")} >${SharedPreferencesRepository.getString("Upazila")} > ${SharedPreferencesRepository.getString("Roads")}",
                size: Dimension.smallFont + 2),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: BigText(
                text:
                "Search Reasult  ${myItems.length}",
              )),

          SizedBox(
            height: 20,

          ),

         Expanded(
              child: ListView.builder(
                  itemCount: myItems.length,
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
                              BigText(
                                text:
                                // "Structure: ${userProfileController.inventoryData.structure.toString()}",
                                "Code:${myItems[index]['STRUCTID']}",
                                fontWeight: FontWeight.bold,
                                size: Dimension.mediumFont,
                              ),
                              SizedBox(
                                height: 10,
                              ),

                                BigText(
                                  text:
                                  // "str-id:${userProfileController.inventoryData.sTRUCTID.toString()}",
                                  "Type:${myItems[index]['STRUCTURETYPE']}",
                                  fontWeight: FontWeight.bold,
                                  size: Dimension.mediumFont,
                                ),

                                // BigText(
                                //   text:
                                //   // "str-id:${userProfileController.inventoryData.sTRUCTID.toString()}",
                                //   "Type:${test[index]['sTRUCTURETYPE']}",
                                //   fontWeight: FontWeight.bold,
                                //   size: Dimension.mediumFont,
                                // ),
                              SizedBox(
                                height: 10,
                              ),
                              BigText(
                                text:
                                // "c.date:${userProfileController.inventoryData.constructionYear.toString()}",
                                "Chainage:${myItems[index]["CHAINAGE"]}",
                                fontWeight: FontWeight.bold,
                                size: Dimension.mediumFont,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              BigText(
                                text:
                                // "Chainage:${userProfileController.inventoryData.cHAINAGE.toString()}",
                                "Length:${myItems[index]["TOTALLENGTH"]}",
                                size: Dimension.mediumFont,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              BigText(
                                text:
                                // "Chainage:${userProfileController.inventoryData.cHAINAGE.toString()}",
                                "Year:${myItems[index]["construction_year"]}",
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

                                  controller.structureIdSaveData.value = myItems[index]['STRUCTID'];
                                  print(" St${controller.structureIdSaveData.value}");

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
                                height: 10,
                              ),
                              GestureDetector(
                                onTap:(){
                                  controller.structureIdSaveData.value = myItems[index]['STRUCTID'];
                                  print(" St${controller.structureIdSaveData.value}");
                                  Get.toNamed(Routes.INVENTORY_INSPECTION);
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
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                  onTap: (){
                                    Get.toNamed(Routes.LOCAL_DATA_PREVIEW);

                                  },
                                  child: CustomButton(
                                    height: 40,
                                    width: 80,
                                    text: "Preview",
                                    radius: 10,
                                    backgroundColour: AppColors.primary_color,
                                  )),
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
    );
  }
}

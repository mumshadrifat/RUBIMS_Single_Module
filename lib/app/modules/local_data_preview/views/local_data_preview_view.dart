import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lged_inspection/app/model/inspection_post_model.dart';
import 'package:lged_inspection/app/routes/app_pages.dart';

import '../../../common_widget/app_bar.dart';
import '../../../common_widget/button.dart';
import '../../../common_widget/text.dart';
import '../../../data/database_helper/databse_helper.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimens.dart';
import '../../conditional_Inspection_page/controllers/conditional_inspection_page_controller.dart';
import '../../user_profile/controllers/user_profile_controller.dart';
import '../controllers/local_data_preview_controller.dart';

class LocalDataPreviewView extends GetView<LocalDataPreviewController> {


  UserProfileController userProfileController=Get.find<UserProfileController>();

  LocalDataPreviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.dataLoading();
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigText(text: "Inspection History",fontWeight: FontWeight.bold),
                ],
              ),

          SizedBox(
            height: 20,
          ),
          Obx(
            () => Expanded(
              child: ListView.builder(
                  itemCount: controller.listInspection?.length == 0 ? 1 : controller.length.value,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),

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
                                userProfileController.upzilaName.value,
                                fontWeight: FontWeight.bold,
                                size: Dimension.mediumFont,
                              ),
                              SizedBox(
                                height: 10,
                              ),BigText(
                                text:
                                // "Structure: ${userProfileController.inventoryData.structure.toString()}",
                                userProfileController.roadCode.value.substring(0,10),
                                fontWeight: FontWeight.bold,
                                size: Dimension.mediumFont,
                                
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              BigText(
                                text:
                                    // "Structure: ${userProfileController.inventoryData.structure.toString()}",
                                controller.listInspection?[index]["STRUCTID"],
                                fontWeight: FontWeight.bold,
                                size: Dimension.mediumFont,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              BigText(
                                text: controller.listInspection?[index]["INSP_DATE"],
                                // "str-id:${userProfileController.inventoryData.sTRUCTID.toString()}",

                                fontWeight: FontWeight.bold,
                                size: Dimension.mediumFont,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.insId=index+1;
                                  print("ins id${controller.insId}");
                                  controller.dataRetrieveSubmit( controller.insId);



                                },
                                child: CustomButton(
                                  height: 40,
                                  width: 80,
                                  text: "Submit",
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

                                  controller.insId=index+1;
                                  Get.toNamed(Routes.ELEMENTS_DETAILS_PAGE);
                                },
                                child: CustomButton(
                                  height: 40,
                                  width: 80,
                                  text: "Details",
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
    );
  }
}

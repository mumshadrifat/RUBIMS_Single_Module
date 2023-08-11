import 'dart:convert';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lged_inspection/app/common_widget/button.dart';
import 'package:lged_inspection/app/model/Response/district_model.dart';
import 'package:lged_inspection/app/model/Response/division_response_model.dart';
import 'package:lged_inspection/app/model/Response/upazila_response_model.dart';
import 'package:lged_inspection/app/modules/login/controllers/login_controller.dart';
import 'package:lged_inspection/app/routes/app_pages.dart';
import 'package:lged_inspection/app/utils/colors.dart';
import 'package:lged_inspection/app/utils/dimens.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common_widget/app_bar.dart';
import '../../../common_widget/text.dart';
import '../../../model/Response/road_type_response.dart';
import '../../../model/Response/structure_list_response.dart';
import '../../../model/Response/user_road_response.dart';
import '../../../utils/memory_management.dart';
import '../controllers/user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  LoginController loginController = Get.find<LoginController>();
  int upazilaId = 0;
  int roadTypeId =0;

  @override
  Widget build(BuildContext context) {
    // dummyList.add(dummyStr);
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.background,
          appBar: CustomAppBar(),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: Dimension.height30,
                ),
                // Container(
                //   padding: EdgeInsets.only(left: Dimension.width20,right: Dimension.width20),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Expanded(
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Container(
                //               /* margin: EdgeInsets.only(
                //                   left: Dimension.width20 * 3,
                //                   right: Dimension.width20 + Dimension.width20 * 3,
                //                   bottom: Dimension.height20 * 2),*/
                //               height: Dimension.height20 * 4,
                //               width: Dimension.width20 * 4,
                //               //width: double.maxFinite,
                //               decoration: BoxDecoration(
                //                 image: const DecorationImage(
                //                     image: AssetImage(
                //                         "assets/image/profileHead.png"),
                //                     fit: BoxFit.scaleDown),
                //                 borderRadius:
                //                     BorderRadius.circular(Dimension.radius20),
                //               ),
                //             ),
                //             SizedBox(height: Dimension.height5),
                //             GestureDetector(
                //               onTap: () {
                //                 // Get.toNamed(Routes.INSPECTION_PAGE_VIEW_CONTROLLER);
                //               },
                //               child: Obx(
                //                 () => BigText(
                //                   text: Get.find<LoginController>()
                //                       .userName
                //                       .value,
                //                   size: Dimension.mediumFont + 2,
                //                   fontWeight: FontWeight.bold,
                //                   color: AppColors.primary_color,
                //                 ),
                //               ),
                //             ),
                //             SizedBox(height: Dimension.height5),
                //             Obx(
                //               () => BigText(
                //                   text: Get.find<LoginController>()
                //                       .userEmail
                //                       .value,
                //                   size: Dimension.mediumFont),
                //             ),
                //             SizedBox(height: Dimension.height5),
                //             BigText(
                //               text: "Sadar Upazila Barisal",
                //               size: Dimension.mediumFont,
                //             ),
                //             SizedBox(height: Dimension.height10),
                //             CustomButton(
                //                 height: Dimension.height20 * 2,
                //                 width: Dimension.width20 * 7,
                //                 text: "Dashboard",
                //                 radius: Dimension.radius30,
                //                 fontWeight: FontWeight.bold,
                //                 textSize: Dimension.smallFont + 1.5,
                //                 backgroundColour: AppColors.primary_color,
                //                 textColour: Colors.white),
                //           ],
                //         ),
                //       ),
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           /* Container(
                //           */ /* margin: EdgeInsets.only(
                //                   left: Dimension.width20 * 3,
                //                   right: Dimension.width20 + Dimension.width20 * 3,
                //                   bottom: Dimension.height20 * 2),*/ /*
                //           height: Dimension.height20+Dimension.height5,
                //           width: Dimension.width20+Dimension.height5,
                //           //width: double.maxFinite,
                //           decoration: BoxDecoration(
                //             image: new DecorationImage(
                //                 image: const AssetImage("assets/image/go.png"),
                //                 fit: BoxFit.scaleDown),
                //             borderRadius:
                //             BorderRadius.circular(Dimension.radius20),
                //           ),
                //         ),*/
                //
                //           Icon(Icons.logout,
                //               size: Dimension.height20 * 1.5,
                //               color: AppColors.secondary,
                //               shadows: [
                //                 /*BoxShadow(
                //             color: Co lors.green,
                //             blurRadius: 5.0,
                //           ),*/
                //               ]),
                //           SizedBox(
                //             height: Dimension.height45 * 2,
                //           ),
                //           Icon(
                //             Icons.edit,
                //             size: Dimension.height20,
                //             color: AppColors.secondary,
                //           ),
                //           /*Container(
                //           */ /* margin: EdgeInsets.only(
                //                   left: Dimension.width20 * 3,
                //                   right: Dimension.width20 + Dimension.width20 * 3,
                //                   bottom: Dimension.height20 * 2),*/ /*
                //
                //           height: Dimension.height20+Dimension.height5,
                //           width: Dimension.width20+Dimension.height5,
                //           //width: double.maxFinite,
                //           decoration: BoxDecoration(
                //             image: new DecorationImage(
                //                 image: const AssetImage("assets/image/edit.png"),
                //                 fit: BoxFit.fitWidth),
                //             borderRadius:
                //             BorderRadius.circular(Dimension.radius20),
                //           ),
                //         ),*/
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: Dimension.height10,
                ),
                Container(
                  height: Dimension.height15 / Dimension.height10,
                  width: double.maxFinite,
                  color: Colors.black12,
                ),
                SizedBox(
                  height: Dimension.height10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: Dimension.width10),
                        child: BigText(
                            text: "Structure", size: Dimension.mediumFont)),
                  ],
                ),
                SizedBox(
                  height: Dimension.height10,
                ),
                Obx(
                  () =>  controller.divisonName.value==''?Container(
                    padding: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                    ),
                    margin: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimension.radius30),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Container(
                      //width: width,
                      // decoration: BoxDecoration(
                      //   color: AppColors.extraa_light,
                      //   borderRadius: BorderRadius.circular(Dimension.radius15),
                      //   border: Border.all(color: Colors.black),
                      // ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration: InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Text(
                            'Select Divison',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.primary_color,
                            ),
                          ),

                          items: controller.divisionListChecked
                              .map((Divisions divison) {
                            return DropdownMenuItem(
                                value: divison,
                                child: Text(divison.text.toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.primary_color,
                                    ),
                                    overflow: TextOverflow.ellipsis));
                          }).toList(),
                          onChanged: (newValue) async{
                            newValue as Divisions;
                            // controller.setStructureList(101) as List<Structures>;
                            controller.getDistrictList(newValue.value!);
                            controller.divisonName.value = newValue.text!;
                            SharedPreferencesRepository.SetString("Divison", newValue.text!);
                            //dummyList=controller.structureList;
                            //controller.userResponseList.value = newValue.text.toString() as List<Result>;
                          },
                        ),
                      ),
                    ),
                  ):Container(
                    padding: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                    ),
                    margin: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimension.radius30),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Container(
                    width: double.maxFinite,

                      child:Padding(
                      padding: const EdgeInsets.all( 10),
                        child:  Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(text:controller.divisonName.value,size: Dimension.mediumFont-2),
                          ],
                        ),
                      )
                    ),
                  )

                  // Obx(() =>  Container(
                  //   padding: EdgeInsets.only(
                  //     left: Dimension.width20,
                  //     right: Dimension.width20,
                  //   ),
                  //   child: DropDown(
                  //     heigh: Dimension.height30 * 2,
                  //     width: double.maxFinite,
                  //     iconColor: Colors.black,
                  //     text: "Road-name",
                  //     list:controller.userResponseList,
                  //
                  //   ),
                  // ),),
                ),
                SizedBox(height: Dimension.height10),
                Obx(
                  () => Container(
                    padding: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                    ),
                    margin: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimension.radius30),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Container(
                      //width: width,
                      // decoration: BoxDecoration(
                      //   color: AppColors.extraa_light,
                      //   borderRadius: BorderRadius.circular(Dimension.radius15),
                      //   border: Border.all(color: Colors.black),
                      // ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration: InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Text(
                            'Select District',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.primary_color,
                            ),
                          ),

                          items:
                              controller.districtList.map((District district) {
                            return DropdownMenuItem(
                                value: district,
                                child: Text(district.text.toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.primary_color,
                                    ),
                                    overflow: TextOverflow.ellipsis));
                          }).toList(),
                          onChanged: (newValue) async{
                            newValue as District;
                            // controller.setStructureList(101) as List<Structures>;
                            controller.getUpazilaList(newValue.value!);
                            controller.districtName.value = newValue.text!;
                            SharedPreferencesRepository.SetString("District", newValue.text!);
                            //dummyList=controller.structureList;
                            //controller.userResponseList.value = newValue.text.toString() as List<Result>;
                          },
                        ),
                      ),

                    ),
                  ),

                  // Obx(() =>  Container(
                  //   padding: EdgeInsets.only(
                  //     left: Dimension.width20,
                  //     right: Dimension.width20,
                  //   ),
                  //   child: DropDown(
                  //     heigh: Dimension.height30 * 2,
                  //     width: double.maxFinite,
                  //     iconColor: Colors.black,
                  //     text: "Road-name",
                  //     list:controller.userResponseList,
                  //
                  //   ),
                  // ),),
                ),

                SizedBox(height: Dimension.height10),
                Obx(
                  () => Container(
                    padding: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                    ),
                    margin: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimension.radius30),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Container(
                      //width: width,
                      // decoration: BoxDecoration(
                      //   color: AppColors.extraa_light,
                      //   borderRadius: BorderRadius.circular(Dimension.radius15),
                      //   border: Border.all(color: Colors.black),
                      // ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration: InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Text(
                            'Select Upazila',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.primary_color,
                            ),
                          ),

                          items: controller.upazilaList.map((Upazila upazila) {
                            return DropdownMenuItem(
                                value: upazila,
                                child: Text(upazila.text.toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.primary_color,
                                    ),
                                    overflow: TextOverflow.ellipsis));
                          }).toList(),
                          onChanged: (newValue) async{
                            newValue as Upazila;
                            upazilaId = newValue.value!;
                            controller.upzilaName.value = newValue.text!;
                            SharedPreferencesRepository.SetString("Upazila", newValue.text!);

                            // controller.setStructureList(101) as List<Structures>;
                            //controller.setStructureList(newValue.value!);
                            //dummyList=controller.structureList;
                            //controller.userResponseList.value = newValue.text.toString() as List<Result>;
                          },
                        ),
                      ),
                    ),
                  ),

                  // Obx(() =>  Container(
                  //   padding: EdgeInsets.only(
                  //     left: Dimension.width20,
                  //     right: Dimension.width20,
                  //   ),
                  //   child: DropDown(
                  //     heigh: Dimension.height30 * 2,
                  //     width: double.maxFinite,
                  //     iconColor: Colors.black,
                  //     text: "Road-name",
                  //     list:controller.userResponseList,
                  //
                  //   ),
                  // ),),
                ),
                 SizedBox(height: Dimension.height10),
                Obx(
                  () => Container(
                    padding: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                    ),
                    margin: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimension.radius30),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Container(
                      //width: width,
                      // decoration: BoxDecoration(
                      //   color: AppColors.extraa_light,
                      //   borderRadius: BorderRadius.circular(Dimension.radius15),
                      //   border: Border.all(color: Colors.black),
                      // ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration: InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Text(
                            'Select Road-Type',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.primary_color,
                            ),
                          ),

                          items:
                              controller.roadTypeList.map((RoadType roadType) {
                            return DropdownMenuItem(
                                value: roadType,
                                child: Text(roadType.text.toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.primary_color,
                                    ),
                                    overflow: TextOverflow.ellipsis));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as RoadType;
                            roadTypeId =newValue.value!;
                            controller.getRoadList(upazilaId, roadTypeId);
                            print("=======================>upazilaId=$roadTypeId,and roadType${newValue.value!}");
                            print("=======================>roadTypeId=$roadTypeId,and roadType${newValue.value!}");
                            // controller.setStructureList(101) as List<Structures>;
                            //controller.setStructureList(newValue.value!);
                            //dummyList=controller.structureList;
                            //controller.userResponseList.value = newValue.text.toString() as List<Result>;
                          },
                        ),
                      ),
                    ),
                  ),

                  // Obx(() =>  Container(
                  //   padding: EdgeInsets.only(
                  //     left: Dimension.width20,
                  //     right: Dimension.width20,
                  //   ),
                  //   child: DropDown(
                  //     heigh: Dimension.height30 * 2,
                  //     width: double.maxFinite,
                  //     iconColor: Colors.black,
                  //     text: "Road-name",
                  //     list:controller.userResponseList,
                  //
                  //   ),
                  // ),),
                ),
                SizedBox(height: Dimension.height10),
                Obx(() => controller.userResponseList.length > 0 ? Container(
                            padding: EdgeInsets.only(
                              left: Dimension.width20,
                              right: Dimension.width20,
                            ),
                            margin: EdgeInsets.only(
                              left: Dimension.width20,
                              right: Dimension.width20,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Dimension.radius30),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Container(
                              //width: width,
                              // decoration: BoxDecoration(
                              //   color: AppColors.extraa_light,
                              //   borderRadius: BorderRadius.circular(Dimension.radius15),
                              //   border: Border.all(color: Colors.black),
                              // ),

                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: DropdownButtonFormField(
                                  isExpanded: true,
                                  decoration:
                                      InputDecoration(border: InputBorder.none),

                                  //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                                  hint: Text(
                                    'Select Your Roads',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.primary_color,
                                    ),
                                  ),

                                  items: controller.userResponseList
                                      .map((Result userRes) {
                                    return DropdownMenuItem(
                                        value: userRes,
                                        child: Text(userRes.text.toString(),
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: AppColors.primary_color,
                                            ),
                                            overflow: TextOverflow.ellipsis));
                                  }).toList(),
                                  onChanged: (newValue) {
                                    newValue as Result;
                                    // controller.setStructureList(101) as List<Structures>;
                                    controller
                                        .setStructureList(newValue.value!);
                                    controller.roadCode.value = newValue.text!;
                                    SharedPreferencesRepository.SetString("Roads", controller.roadCode.value);
                                    //dummyList=controller.structureList;
                                    //controller.userResponseList.value = newValue.text.toString() as List<Result>;
                                  },
                                ),
                              ),
                            ),
                          )
                        : Container(
                            height: 50,
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                              left: Dimension.width20,
                              right: Dimension.width20,
                              top: Dimension.height10,
                              bottom: Dimension.height10,
                            ),
                            margin: EdgeInsets.only(
                              left: Dimension.width20,
                              right: Dimension.width20,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Dimension.radius30),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Text(
                              "No data",
                              style: TextStyle(color: Colors.black12),
                            ),
                          )

                    // Obx(() =>  Container(
                    //   padding: EdgeInsets.only(
                    //     left: Dimension.width20,
                    //     right: Dimension.width20,
                    //   ),
                    //   child: DropDown(
                    //     heigh: Dimension.height30 * 2,
                    //     width: double.maxFinite,
                    //     iconColor: Colors.black,
                    //     text: "Road-name",
                    //     list:controller.userResponseList,
                    //
                    //   ),
                    // ),),
                    ),
                SizedBox(height: Dimension.height10),
                // Obx(
                //   () => Container(
                //     padding: EdgeInsets.only(
                //       left: Dimension.width20,
                //       right: Dimension.width20,
                //     ),
                //     margin: EdgeInsets.only(
                //       left: Dimension.width20,
                //       right: Dimension.width20,
                //     ),
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(Dimension.radius30),
                //       border: Border.all(color: Colors.black),
                //     ),
                //     child: Container(
                //       child: Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 10),
                //         child: DropdownButtonFormField(
                //           isExpanded: true,
                //           // isCaseSensitiveSearch: true,
                //
                //           decoration: InputDecoration(border: InputBorder.none),
                //           hint: Text(
                //             'Select Structure Type',
                //             style: TextStyle(
                //               fontSize: 12,
                //               color: AppColors.primary_color,
                //             ),
                //           ),
                //           items: controller.structureList
                //               .map((Structures structure) {
                //             return DropdownMenuItem(
                //                 value: structure,
                //                 child: Text(structure.text.toString(),
                //                     style: TextStyle(
                //                       fontSize: 12,
                //                       color: AppColors.primary_color,
                //                     ),
                //                     overflow: TextOverflow.ellipsis));
                //           }).toList(),
                //           onChanged: (newValue) {
                //             newValue as Structures;
                //             controller.getStructureInventory(newValue.value!);
                //             print(newValue.value.toString());
                //             //print(controller.structureList.value.toString());
                //           },
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                // DropdownSearch<String>(
                //
                //   items: controller.structureStringList,
                //
                //   onChanged: (value){
                //     print(value);
                //   },
                //
                // ),
                SizedBox(height: Dimension.height10),
                Container(
                  padding: EdgeInsets.only(
                    left: Dimension.width20,
                    right: Dimension.width20,
                  ),
                  margin: EdgeInsets.only(
                    left: Dimension.width20,
                    right: Dimension.width20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimension.radius30),
                    border: Border.all(color: Colors.black),
                  ),
                  child:DropdownSearch<Structures>(
                    popupProps: PopupProps.bottomSheet(
                      showSearchBox: true,
                    ),
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                          hintText: "Select Chainage",
                          border: InputBorder.none),
                    ),
                    items: controller.structureList,
                     itemAsString: (Structures item) => item.cHAINAGE!,
                    onChanged: (Structures? data) => print(data!.cHAINAGE),
                  ),
                ),





                // DropdownSearch<Structures>(
                //   popupProps: PopupProps.bottomSheet(
                //     showSearchBox: true,
                //   ),
                //   dropdownDecoratorProps: DropDownDecoratorProps(
                //     dropdownSearchDecoration: InputDecoration(
                //         hintText: "Select Chainage",
                //         border: InputBorder.none),
                //   ),
                //   items: controller.structureList.value,
                //   itemAsString: (Structures u) => u.cHAINAGE!,
                //   onChanged: (Structures? data) => print(data?.cHAINAGE),
                // ),





                // DropdownSearch<String>(
                //
                //   items: controller.structureList.map((e)=>e.text).toList() as List<String>,
                //
                //
                //
                //   onChanged: (value){
                //     print(value);
                //   },
                //   selectedItem: "Canada",
                // ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                      top: Dimension.height20,
                      bottom: Dimension.height10),
                  padding: EdgeInsets.only(
                      left: Dimension.width20 - 2,
                      right: Dimension.width20 - 2,
                      top: Dimension.height20,
                      bottom: Dimension.height20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Container(
                      //   /* margin: EdgeInsets.only(
                      //             left: Dimension.width20 * 3,
                      //             right: Dimension.width20 + Dimension.width20 * 3,
                      //             bottom: Dimension.height20 * 2),*/
                      //   height: Dimension.height20 * 4,
                      //   width: Dimension.width20 * 4,
                      //   //width: double.maxFinite,
                      //   decoration: BoxDecoration(
                      //     image: new DecorationImage(
                      //         image:
                      //             const AssetImage("assets/image/bridge.png"),
                      //         fit: BoxFit.scaleDown),
                      //     borderRadius:
                      //         BorderRadius.circular(Dimension.radius20),
                      //   ),
                      // ),
                      SizedBox(
                        height: Dimension.height10,
                      ),
                      // Obx(
                      //   () => BigText(
                      //       text: controller.structureList.isEmpty
                      //           ? "hello"
                      //           : controller.structureList[0].text!,
                      //       fontWeight: FontWeight.bold,
                      //       size: Dimension.mediumFont,
                      //       color: Colors.black),
                      // ),
                      // SizedBox(
                      //   height: Dimension.height5,
                      // ),
                      // BigText(
                      //     text: "Structure Type",
                      //     size: Dimension.smallFont,
                      //     color: Colors.black),
                      // SizedBox(
                      //   height: Dimension.height45,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.STRUCTURE_INVENTORY);
                              print( "Bag bah bah ${SharedPreferencesRepository.getString("Divison")}");
                              print( "Bag bah bah ${SharedPreferencesRepository.getString("District")}");
                              print( "Bag bah bah ${SharedPreferencesRepository.getString("Upazila")}");
                              print( "Bag bah bah ${SharedPreferencesRepository.getString("Roads")}");

                              var myItemsAsJsonString = SharedPreferencesRepository.getString('structureList');
                              var myItems = json.decode(myItemsAsJsonString);
                              print( "Bag bah bah ${myItems}");

                            },
                            child: CustomButton(
                                height: Dimension.height20 * 2,
                                width: Dimension.width20 * 7,
                                text: "Search",
                                radius: Dimension.radius30,
                                fontWeight: FontWeight.bold,
                                textSize: Dimension.smallFont + 1.5,
                                backgroundColour: AppColors.secondary,
                                textColour: Colors.white),
                          ),
                          // GestureDetector(
                          //   onTap: () {
                          //     Get.toNamed(
                          //         Routes.INSPECTION_PAGE_VIEW_CONTROLLER);
                          //   },
                          //   child: CustomButton(
                          //       height: Dimension.height20 * 2,
                          //       width: Dimension.width20 * 7,
                          //       text: "Inspection",
                          //       radius: Dimension.radius30,
                          //       fontWeight: FontWeight.bold,
                          //       textSize: Dimension.smallFont + 1.5,
                          //       backgroundColour: AppColors.purple,
                          //       textColour: Colors.white),
                          // ),
                          // CustomButton(
                          //     height: Dimension.height20 * 2,
                          //     width: Dimension.width20 * 7,
                          //     text: "Inventory Inspection",
                          //     radius: Dimension.radius30,
                          //     fontWeight: FontWeight.bold,
                          //     textSize: Dimension.smallFont + 1.5,
                          //     backgroundColour: AppColors.secondary,
                          //     textColour: Colors.white),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.STRUCTURE_INVENTORY_SAVE_DATA);
                              // print( "Bag bah bah ${SharedPreferencesRepository.getString("Divison")}");
                              // print( "Bag bah bah ${SharedPreferencesRepository.getString("District")}");
                              // print( "Bag bah bah ${SharedPreferencesRepository.getString("Upazila")}");
                              // print( "Bag bah bah ${SharedPreferencesRepository.getString("Roads")}");
                              //
                              // var myItemsAsJsonString = SharedPreferencesRepository.getString('structureList');
                              // var myItems = json.decode(myItemsAsJsonString);
                              // print( "Bag bah bah ${myItems}");

                            },
                            child: CustomButton(
                                height: Dimension.height20 * 2,
                                width: Dimension.width20 * 7,
                                text: "Go To Save",
                                radius: Dimension.radius30,
                                fontWeight: FontWeight.bold,
                                textSize: Dimension.smallFont + 1.5,
                                backgroundColour: AppColors.secondary,
                                textColour: Colors.white),
                          )
                        ],
                      ),

                    ],
                  ),
                ),

              ],
            ),
          )),
    );
  }
}

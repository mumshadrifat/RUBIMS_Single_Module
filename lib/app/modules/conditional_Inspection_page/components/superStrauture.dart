import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../model/inspection_post_model.dart';
import '../../../utils/colors.dart';
import '../controllers/conditional_inspection_page_controller.dart';
import '../model/getCSListResponse.dart';
import '../model/getElementsResponse.dart';

class SuperStrauture extends StatelessWidget {
  SuperStrauture({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ConditionalInspectionPageController controller;
  Map superMap = {};
  RxBool pickedData = false.obs;
  RxString pickedCompId = ''.obs;

  @override
  Widget build(BuildContext context) {
    var s = InspObsIndviStrTmps();

    return Container(
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 3,
          ),
          Text(
            'Observation of Individual Component',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 3,
          ),
          // Obx(
          //   () => Container(
          //     //width: width,
          //     // decoration: BoxDecoration(
          //     //   color: AppColors.extraa_light,
          //     //   borderRadius: BorderRadius.circular(Dimension.radius15),
          //     //   border: Border.all(color: Colors.black),
          //     // ),
          //
          //     child: Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 10),
          //       child: DropdownButtonFormField(
          //         isExpanded: true,
          //         decoration: InputDecoration(border: InputBorder.none),
          //
          //         //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
          //         hint: Text(
          //           'Select Your Elements',
          //           style: TextStyle(
          //             fontSize: 12,
          //             color: AppColors.primary_color,
          //           ),
          //         ),
          //
          //         items: controller.elementsListSuper.map((SuperList category) {
          //           return DropdownMenuItem(
          //               value: category,
          //               child: Text(category.nAME!,
          //                   style: TextStyle(
          //                     fontSize: 12,
          //                     color: AppColors.primary_color,
          //                   ),
          //                   overflow: TextOverflow.ellipsis));
          //         }).toList(),
          //         onChanged: (newValue) {
          //           newValue as SuperList;
          //           controller.selectSuperList.add(newValue.nAME.toString());
          //           controller.superCompoName=newValue.nAME.toString();
          //           controller.compoNo = newValue.iD!;
          //           print('selected Element :${controller.compoNo}');
          //           superMap = {};
          //           s = InspObsIndviStrTmps();
          //           superMap[newValue.iD] = s;
          //
          //           // controller.elementsListSub.add(SubList(iD: "1",));
          //         },
          //       ),
          //     ),
          //   ),
          // ),
          Obx(
            () => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.elementsListSuper.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.extraa_light,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {

                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.extraa_light,
                                        style: BorderStyle.solid,
                                        width: 2.0,
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    child: GestureDetector(
                                      onTap: (){

                                      },
                                      child: ExpansionTile(
                                        onExpansionChanged: (value){
                                          controller.superCompoName = controller
                                              .elementsListSuper[index].nAME
                                              .toString();
                                          controller.compoNo = controller.elementsListSuper[index].iD!.toString();

                                          superMap = {};
                                          s = InspObsIndviStrTmps();
                                          superMap[controller
                                              .elementsListSuper[index].iD.toString()] = s;
                                          print(
                                              "Id for super---${controller.elementsListSuper[index].iD}");
                                        },
                                        iconColor: AppColors.primary_color,
                                        textColor: AppColors.primary_color,
                                        backgroundColor: Colors.white,
                                        // leading: Text('asdasdadsdas'),

                                        title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap:(){


                                              },
                                              child: Text(
                                                controller.elementsListSuper[index].nAME.toString(),
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // trailing: IconButton(
                                        //   onPressed: () {
                                        //     controller.increment();
                                        //     controller.counterList.add(controller.count.value);
                                        //     print(controller.counterList);
                                        //   },
                                        //   icon: Icon(Icons.add),
                                        // ),
                                        children: <Widget>[
                                         Obx(()=> ListView.builder(
                                             shrinkWrap: true,
                                             physics:
                                             NeverScrollableScrollPhysics(),
                                             itemCount: controller
                                                 .defectListsSuper.length,
                                             itemBuilder: (BuildContext context,
                                                 int index) {
                                               return Padding(
                                                 padding: const EdgeInsets.only(
                                                     left: 10,
                                                     right: 10,
                                                     bottom: 2,
                                                     top: 2),
                                                 child: Row(
                                                   children: [
                                                     Expanded(
                                                       //'${controller.defectList[index]}'
                                                         child: Obx(
                                                               () => ExpansionTile(
                                                             iconColor: AppColors
                                                                 .primary_color,
                                                             textColor: AppColors
                                                                 .primary_color,
                                                             backgroundColor:
                                                             Colors.white,
                                                             title: Row(
                                                               mainAxisAlignment:
                                                               MainAxisAlignment
                                                                   .spaceBetween,
                                                               children: [
                                                                 Text(
                                                                   controller
                                                                       .defectListsSuper[
                                                                   index]
                                                                       .nAME!,
                                                                   style: TextStyle(
                                                                       fontSize: 12),
                                                                 ),
                                                               ],
                                                             ),
                                                             children: <Widget>[
                                                               Row(
                                                                 children: [
                                                                   Expanded(
                                                                     //'${controller.defectList[index]}'
                                                                     child: Obx(
                                                                           () => Container(
                                                                         //width: width,
                                                                         // decoration: BoxDecoration(
                                                                         //   color: AppColors.extraa_light,
                                                                         //   borderRadius: BorderRadius.circular(Dimension.radius15),
                                                                         //   border: Border.all(color: Colors.black),
                                                                         // ),

                                                                         child:
                                                                         Padding(
                                                                           padding: const EdgeInsets
                                                                               .symmetric(
                                                                               horizontal:
                                                                               10),
                                                                           child:
                                                                           DropdownButtonFormField(
                                                                             isExpanded:
                                                                             true,
                                                                             decoration:
                                                                             InputDecoration(
                                                                                 border: InputBorder.none),

                                                                             //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                                                                             hint:
                                                                             Padding(
                                                                               padding:
                                                                               const EdgeInsets.only(left: 12),
                                                                               child:
                                                                               Text(
                                                                                 'Select Your Ratings',
                                                                                 style:
                                                                                 TextStyle(
                                                                                   fontSize:
                                                                                   12,
                                                                                   color:
                                                                                   AppColors.primary_color,
                                                                                 ),
                                                                               ),
                                                                             ),

                                                                             items: controller
                                                                                 .csList
                                                                                 .map((CSListData
                                                                             category) {
                                                                               return DropdownMenuItem(
                                                                                   value:
                                                                                   category,
                                                                                   child:
                                                                                   Padding(
                                                                                     padding: const EdgeInsets.only(left: 12),
                                                                                     child: Text(category.text!,
                                                                                         style: TextStyle(
                                                                                           fontSize: 12,
                                                                                           color: AppColors.primary_color,
                                                                                         ),
                                                                                         overflow: TextOverflow.ellipsis),
                                                                                   ));
                                                                             }).toList(),
                                                                             onChanged:
                                                                                 (newValue) {
                                                                               newValue
                                                                               as CSListData;
                                                                               controller
                                                                                   .selectCSList
                                                                                   .value = newValue.text.toString();

                                                                               //print('ratings:${controller.selectCSList.value.toString()}');
                                                                               if (index ==
                                                                                   0) {
                                                                                 s.cRACKS =
                                                                                 newValue.value!;
                                                                                 s.cOMPID = controller.compoNo.toString();
                                                                                 s.compoName=controller.superCompoName;
                                                                                 // controller.crackRatings=newValue.text!;
                                                                                 // controller.alldefectsList=[];
                                                                                 // controller.alldefectsList.add(controller.crackRatings);
                                                                                 // controller.superDefectMap['Crack']=[controller.alldefectsList];
                                                                                 // print('creackRatings:${controller.crackRatings}');
                                                                               } else if (index ==
                                                                                   1) {
                                                                                 s.sPALLING =
                                                                                 newValue.value!;
                                                                                 s.cOMPID =
                                                                                     controller.compoNo.toString();
                                                                                 s.compoName=controller.superCompoName;
                                                                                 // controller.alldefectsList=[];
                                                                                 // controller.concreteSpallingRat=newValue.text!;
                                                                                 // controller.alldefectsList.add(controller.concreteSpallingRat);
                                                                                 // controller.superDefectMap['ConcreteSpalling']=[controller.alldefectsList];
                                                                                 // print('concreteSpallingRat:${controller.concreteSpallingRat}');
                                                                               } else if (index ==
                                                                                   2) {
                                                                                 s.rEBAR =
                                                                                 newValue.value!;
                                                                                 s.cOMPID =
                                                                                     controller.compoNo.toString();
                                                                                 s.compoName=controller.superCompoName;
                                                                                 // controller.alldefectsList=[];
                                                                                 //
                                                                                 // controller.exposedReberRat=newValue.text!;
                                                                                 // controller.alldefectsList.add(controller.exposedReberRat);
                                                                                 // controller.superDefectMap['exposedReber']=[controller.alldefectsList];
                                                                                 // print('exposedReberRat:${controller.exposedReberRat}');
                                                                               } else if (index ==
                                                                                   3) {
                                                                                 s.dAMAGED =
                                                                                 newValue.value!;
                                                                                 s.cOMPID =
                                                                                     controller.compoNo.toString();
                                                                                 s.compoName=controller.superCompoName;
                                                                                 // controller.alldefectsList=[];
                                                                                 //
                                                                                 // controller.damageRat=newValue.text!;
                                                                                 // controller.alldefectsList.add(controller.damageRat);
                                                                                 // controller.superDefectMap['damage']=[controller.alldefectsList];
                                                                                 // print('damageRat:${controller.damageRat}');
                                                                               } else if (index ==
                                                                                   4) {
                                                                                 s.sETTLEMENT =
                                                                                 newValue.value!;
                                                                                 s.cOMPID =
                                                                                     controller.compoNo.toString();
                                                                                 s.compoName=controller.superCompoName;
                                                                                 // controller.alldefectsList=[];
                                                                                 //
                                                                                 // controller.settelementRat=newValue.text!;
                                                                                 // controller.alldefectsList.add(controller.settelementRat);
                                                                                 // controller.superDefectMap['settelemen']=[controller.alldefectsList];
                                                                                 // print('settelementrat:${controller.settelementRat}');
                                                                               } else if (index ==
                                                                                   5) {
                                                                                 s.tILTING =
                                                                                 newValue.value!;
                                                                                 s.cOMPID =
                                                                                     controller.compoNo.toString();
                                                                                 s.compoName=controller.superCompoName;
                                                                                 // controller.alldefectsList=[];
                                                                                 //
                                                                                 // controller.tilTingRat=newValue.text!;
                                                                                 // controller.alldefectsList.add(controller.tilTingRat);
                                                                                 // controller.superDefectMap['tilTing']=[controller.alldefectsList];
                                                                                 // print('tilTingrat:${controller.tilTingRat}');
                                                                               } else if (index ==
                                                                                   6) {
                                                                                 s.mOVEMENT =
                                                                                 newValue.value!;
                                                                                 s.cOMPID =
                                                                                     controller.compoNo.toString();
                                                                                 s.compoName=controller.superCompoName;
                                                                                 // controller.alldefectsList=[];
                                                                                 //
                                                                                 // controller.movementRat=newValue.text!;
                                                                                 // controller.alldefectsList.add(controller.movementRat);
                                                                                 // controller.superDefectMap['movement']=[controller.alldefectsList];
                                                                                 // print('movementRat:${controller.movementRat}');
                                                                               }
                                                                               //controller.superElementMap[controller.selectElement]=controller.superDefectMap;

                                                                               // print('AFTER__SuperStructure${controller.superElementMap}');
                                                                               //  print('AFTER__SuperStructure${controller.indviStrTmps.cRACKS}');

                                                                               superMap
                                                                                   .keys
                                                                                   .forEach((key) {
                                                                                 //   print(key);
                                                                                 s.cOMPID =
                                                                                     key;
                                                                                 pickedCompId.value =
                                                                                 s.cOMPID!;
                                                                               });

                                                                               // for(int i=0;i<controller.inspObsIndviStrTmpsList!.length;i++){
                                                                               //
                                                                               //  if(controller.inspObsIndviStrTmpsList![i].cOMPID ==pickedComId ) {
                                                                               //    controller.inspObsIndviStrTmpsList![i]=s;
                                                                               //  }
                                                                               //   else{
                                                                               //    controller.inspObsIndviStrTmpsList!.add(s);
                                                                               //  }
                                                                               // }
                                                                             },
                                                                           ),
                                                                         ),
                                                                       ),
                                                                     ),
                                                                   ),
                                                                 ],
                                                               ),
                                                             ],
                                                           ),
                                                         )),
                                                   ],
                                                 ),
                                               );
                                             }),),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 8),
                                            child: Container(
                                              height: 50,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black,
                                                  style: BorderStyle.solid,
                                                  width: 1.0,
                                                ),

                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: 'Write your remarks'),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              ElevatedButton(
                                                  onPressed: () {
                                                    if (controller
                                                        .inspObsIndviStrTmpsList!
                                                        .length ==
                                                        0) {
                                                      controller
                                                          .inspObsIndviStrTmpsList!
                                                          .add(s);
                                                    }

                                                    for (int i = 0;
                                                    i <
                                                        controller
                                                            .inspObsIndviStrTmpsList!
                                                            .length;
                                                    i++) {
                                                      if (controller
                                                          .inspObsIndviStrTmpsList![
                                                      i]
                                                          .cOMPID ==
                                                          s.cOMPID) {
                                                        controller
                                                            .inspObsIndviStrTmpsList![
                                                        i] = s;
                                                      } else {
                                                        controller
                                                            .inspObsIndviStrTmpsList!
                                                            .add(s);
                                                      }
                                                    }
                                                    print(
                                                        "Length:::${controller.inspObsIndviStrTmpsList!.length}");

                                                    for (int i = 0;
                                                    i <
                                                        controller
                                                            .inspObsIndviStrTmpsList!
                                                            .length;
                                                    i++) {
                                                      print("Super element${i+1}");
                                                      print(controller
                                                          .inspObsIndviStrTmpsList![i]
                                                          .cOMPID);
                                                      print(controller
                                                          .inspObsIndviStrTmpsList![i]
                                                          .cRACKS);
                                                      print(controller
                                                          .inspObsIndviStrTmpsList![i]
                                                          .sPALLING);
                                                    }

                                                    // controller.postData();
                                                  },
                                                  child: Text('Post')),
                                              Obx(
                                                    () => IconButton(
                                                  onPressed: () {
                                                    controller.superStructureImage(
                                                      ImageSource.camera,
                                                      context: context,
                                                    );
                                                  },
                                                  icon: controller
                                                      .superStructureImageList
                                                      .length <=
                                                      index
                                                      ? Icon(Icons.camera_alt,
                                                      color: Colors.grey)
                                                      : Image.file(
                                                      File(controller
                                                          .superStructureImageList[
                                                      index]),
                                                      height: 100,
                                                      width: 100),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

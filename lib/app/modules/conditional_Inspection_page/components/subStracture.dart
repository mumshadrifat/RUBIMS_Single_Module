import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../model/inspection_post_model.dart';
import '../../../utils/colors.dart';
import '../controllers/conditional_inspection_page_controller.dart';
import '../model/getCSListResponse.dart';
import '../model/getElementsResponse.dart';

class SubStracture extends StatelessWidget {
  SubStracture({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ConditionalInspectionPageController controller;
  Map subMap = {};
  RxString pickedCompId = ''.obs;

  @override
  Widget build(BuildContext context) {
    var r = InspObsIndviStrTmps();
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
          //         items: controller.elementsListSub.map((SubList category) {
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
          //           newValue as SubList;
          //           controller.selectSubList.add(newValue.nAME.toString());
          //           controller.subCompoName=newValue.nAME.toString();
          //           print(controller.subCompoName);
          //           controller.compoNo = newValue.iD!;
          //           print('selected Element :${controller.compoNo}');
          //           subMap = {};
          //           r = InspObsIndviStrTmps();
          //           subMap[newValue.iD] = r;
          //           // print("SubList----------->${controller.selectSubList.length}");
          //           // print("sub.list.value----->${controller.selectSubList.value.toString()}");
          //           // controller.selectElement=newValue.nAME!;
          //           // controller.subDefectMap={};
          //           // controller.subElementMap[controller.selectElement]=controller.subDefectMap;
          //           // print('before__SubStructure${controller.subElementMap}');
          //
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
                    itemCount: controller.elementsListSub.length,
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
                                  child: ExpansionTile(
                                    onExpansionChanged: (value){

                                                controller.subCompoName=controller.elementsListSub[index].nAME.toString();
                                                print(controller.subCompoName);
                                                controller.compoNo = controller.elementsListSub[index].iD.toString();
                                                print('selected Element :${controller.compoNo}');
                                                subMap = {};
                                                r = InspObsIndviStrTmps();
                                                subMap[controller.elementsListSub[index].iD.toString()] = r;
                                                print(
                                                    "Id for sub---${controller.elementsListSub[index].iD}");
                                    },

                                    iconColor: AppColors.primary_color,
                                    textColor: AppColors.primary_color,
                                    backgroundColor: Colors.white,
                                    // leading: Text('asdasdadsdas'),

                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          controller.elementsListSub[index].nAME.toString(),
                                          style: TextStyle(fontSize: 12),
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
                                      ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          itemCount:
                                              controller.defectListsSub.length,
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
                                                      onExpansionChanged:
                                                          (value) {
                                                        value == true
                                                            ? print(
                                                                'defects:${controller.defectListsSub[index].nAME}')
                                                            : null;

                                                        //controller.subDefects=controller.defectListsSub[index].nAME!;
                                                        //(controller.subDefects);
                                                      },
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
                                                                .defectListsSub[
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
                                                                          r.cRACKS =
                                                                              newValue.value!;
                                                                          r.cOMPID =
                                                                              controller.compoNo.toString();
                                                                          r.compoName=controller.subCompoName;
                                                                          // controller.crackRatings=newValue.text!;
                                                                          // controller.alldefectsList=[];
                                                                          // controller.alldefectsList.add(controller.crackRatings);
                                                                          // controller.subDefectMap['Crack']=[controller.alldefectsList];
                                                                          // print('creackRatings:${controller.crackRatings}');
                                                                        } else if (index ==
                                                                            1) {
                                                                          r.sPALLING =
                                                                              newValue.value!;
                                                                          r.cOMPID =
                                                                              controller.compoNo.toString();
                                                                          r.compoName=controller.subCompoName;
                                                                          // controller.alldefectsList=[];
                                                                          // controller.concreteSpallingRat=newValue.text!;
                                                                          // controller.alldefectsList.add(controller.concreteSpallingRat);
                                                                          // controller.subDefectMap['ConcreteSpalling']=[controller.alldefectsList];
                                                                          // print('concreteSpallingRat:${controller.concreteSpallingRat}');
                                                                        } else if (index ==
                                                                            2) {
                                                                          r.rEBAR =
                                                                              newValue.value!;
                                                                          r.cOMPID =
                                                                              controller.compoNo.toString();
                                                                          r.compoName=controller.subCompoName;
                                                                          // controller.alldefectsList=[];
                                                                          //
                                                                          // controller.exposedReberRat=newValue.text!;
                                                                          // controller.alldefectsList.add(controller.exposedReberRat);
                                                                          // controller.subDefectMap['exposedReber']=[controller.alldefectsList];
                                                                          // print('exposedReberRat:${controller.exposedReberRat}');
                                                                        } else if (index ==
                                                                            3) {
                                                                          r.dAMAGED =
                                                                              newValue.value!;
                                                                          r.cOMPID =
                                                                              controller.compoNo.toString();
                                                                          r.compoName=controller.subCompoName;
                                                                          // controller.alldefectsList=[];
                                                                          //
                                                                          // controller.damageRat=newValue.text!;
                                                                          // controller.alldefectsList.add(controller.damageRat);
                                                                          // controller.subDefectMap['damage']=[controller.alldefectsList];
                                                                          // print('damageRat:${controller.damageRat}');
                                                                        } else if (index ==
                                                                            4) {
                                                                          r.sETTLEMENT =
                                                                              newValue.value!;
                                                                          r.cOMPID =
                                                                              controller.compoNo.toString();
                                                                          r.compoName=controller.subCompoName;
                                                                          // controller.alldefectsList=[];
                                                                          //
                                                                          // controller.settelementRat=newValue.text!;
                                                                          // controller.alldefectsList.add(controller.settelementRat);
                                                                          // controller.subDefectMap['settelemen']=[controller.alldefectsList];
                                                                          // print('settelementrat:${controller.settelementRat}');
                                                                        } else if (index ==
                                                                            5) {
                                                                          r.tILTING =
                                                                              newValue.value!;
                                                                          r.cOMPID =
                                                                              controller.compoNo.toString();
                                                                          r.compoName=controller.subCompoName;
                                                                          // controller.alldefectsList=[];
                                                                          //
                                                                          // controller.tilTingRat=newValue.text!;
                                                                          // controller.alldefectsList.add(controller.tilTingRat);
                                                                          // controller.subDefectMap['tilTing']=[controller.alldefectsList];
                                                                          // print('tilTingrat:${controller.tilTingRat}');
                                                                        } else if (index ==
                                                                            6) {
                                                                          r.mOVEMENT =
                                                                              newValue.value!;
                                                                          r.cOMPID =
                                                                              controller.compoNo.toString();
                                                                          r.compoName=controller.subCompoName;
                                                                          // controller.alldefectsList=[];
                                                                          //
                                                                          // controller.movementRat=newValue.text!;
                                                                          // controller.alldefectsList.add(controller.movementRat);
                                                                          // controller.subDefectMap['movement']=[controller.alldefectsList];
                                                                          // print('movementRat:${controller.movementRat}');
                                                                        }
                                                                        subMap
                                                                            .keys
                                                                            .forEach((key) {
                                                                          print(
                                                                              key);
                                                                          r.cOMPID =
                                                                              key;
                                                                          pickedCompId.value =
                                                                              r.cOMPID!;
                                                                        });

                                                                        //controller.subElementMap[controller.selectElement]=controller.subDefectMap;

                                                                        // print('AFTER__SubStructure${controller.subElementMap}');
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
                                          }),
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
                                                    .subList!
                                                    .length ==
                                                    0) {
                                                  controller
                                                      .subList!
                                                      .add(r);
                                                }
                                                for (int i = 0; i < controller.subList!.length; i++) {
                                                  if (controller.subList![i].cOMPID == r.cOMPID) {
                                                    print("added");
                                                    controller.subList![i] = r;
                                                  } else {
                                                    controller
                                                        .subList!
                                                        .add(r);
                                                  }
                                                }
                                                print(
                                                    "Length:::${controller.subList!.length}");
                                                for (int i = 0;
                                                    i <
                                                        controller
                                                            .subList!
                                                            .length;
                                                    i++) {

                                                  print(controller
                                                      .subList![i]
                                                      .cOMPID);
                                                  print(controller
                                                      .subList![i]
                                                      .cRACKS);
                                                  print(controller
                                                      .subList![i]
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

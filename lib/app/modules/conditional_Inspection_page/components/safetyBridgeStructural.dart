import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lged_inspection/app/common_widget/button.dart';

import '../../../data/database_helper/databse_helper.dart';
import '../../../model/ins_model.dart';
import '../../../model/inspection_post_model.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../controllers/conditional_inspection_page_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


import '../model/getCSListResponse.dart';
class SafetyBridgeStructural extends StatelessWidget {
   SafetyBridgeStructural({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ConditionalInspectionPageController controller;
  var check = false;
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    //var formattedDate = DateFormat('hh:mm:ss EEE d-MMM-yyyy').format(now).obs;
    var formattedDate = DateFormat('d-MMM-yyyy').format(now).obs;

    return Container(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 3,),
                Text('Safety Bridge Structural',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
                SizedBox(height: 3),
                ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 4),
                      child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.extraa_light,
                            borderRadius: BorderRadius.all(Radius.circular(5)),

                          ),
                          child: ExpansionTile(
                            title: Text('Repair/Rehabilitation/(Re/New Construction)',style: TextStyle(fontSize: 12),),
                            iconColor: AppColors.primary_color,
                            textColor:  AppColors.primary_color,
                            backgroundColor: Colors.white,
                            children: <Widget>[

                              ListView.builder(

                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: controller.repairRehabilitationReNewConstruction.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return ExpansionTile(
                                      onExpansionChanged: (value){

                                      },
                                    iconColor: AppColors.primary_color,
                                    textColor: AppColors.primary_color,
                                    backgroundColor: Colors.white,
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text( controller.repairRehabilitationReNewConstruction[index], style: TextStyle(fontSize: 12),
                                            maxLines: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    children: <Widget>[
                                    repairRehabilitationReNewConstruction(controller: controller,item: controller.repairRehabilitationReNewConstruction[index]),


                                    ],
                                  );
                                  },
                              ),
                              Obx(()=>Text(controller.justcheck.value),)
                            ],
                          )),
                    ),
                      Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 4),
                      child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.extraa_light,
                            borderRadius: BorderRadius.all(Radius.circular(5)),

                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: ExpansionTile(
                                      title: Text('Repair/Replacement/New Construction',style: TextStyle(fontSize: 12),),
                                      iconColor: AppColors.primary_color,
                                      textColor:  AppColors.primary_color,
                                      backgroundColor: Colors.white,
                                      children: <Widget>[
                                        ListView.builder(
                                            shrinkWrap: true,
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: controller.repairReplacementNewConstruction.length,
                                            itemBuilder: (BuildContext context, int index) {
                                              return ExpansionTile(
                                                onExpansionChanged: (value){

                                                },
                                                iconColor: AppColors.primary_color,
                                                textColor: AppColors.primary_color,
                                                backgroundColor: Colors.white,
                                                title: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(controller.repairReplacementNewConstruction[index], style: TextStyle(fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                                children: <Widget>[
                                                  repairReplacementNewConstruction(controller: controller,item: controller.repairReplacementNewConstruction[index],)

                                                ],
                                              );
                                            }),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                      Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 4),
                      child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.extraa_light,
                            borderRadius: BorderRadius.all(Radius.circular(5)),

                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: ExpansionTile(
                                      title: Text('Cleaning',style: TextStyle(fontSize: 12),),
                                      iconColor: AppColors.primary_color,
                                      textColor:  AppColors.primary_color,
                                      backgroundColor: Colors.white,
                                      children: <Widget>[
                                        ListView.builder(
                                            shrinkWrap: true,
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: controller.cleaning.length,
                                            itemBuilder: (BuildContext context, int index) {
                                              return ExpansionTile(
                                                onExpansionChanged: (value){

                                                },
                                                iconColor: AppColors.primary_color,
                                                textColor: AppColors.primary_color,
                                                backgroundColor: Colors.white,
                                                title: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(controller.cleaning[index], style: TextStyle(fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                                children: <Widget>[
                                                  cleaning(controller: controller,item: controller.cleaning[index],)

                                                ],
                                              );

                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                      Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 4),
                      child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.extraa_light,
                            borderRadius: BorderRadius.all(Radius.circular(5)),

                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: ExpansionTile(
                                      title: Text('Clearing',style: TextStyle(fontSize: 12),),
                                      iconColor: AppColors.primary_color,
                                      textColor:  AppColors.primary_color,
                                      backgroundColor: Colors.white,
                                      children: <Widget>[
                                        ListView.builder(
                                            shrinkWrap: true,
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: controller.clearing.length,
                                            itemBuilder: (BuildContext context, int index) {
                                              return  ExpansionTile(
                                                onExpansionChanged: (value){

                                                },
                                                iconColor: AppColors.primary_color,
                                                textColor: AppColors.primary_color,
                                                backgroundColor: Colors.white,
                                                title: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(controller.clearing[index], style: TextStyle(fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                                children: <Widget>[
                                                  clearing(controller: controller,item: controller.clearing[index],)

                                                ],
                                              );

                                            }),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () async {
                          int? insId;
                          insId = await DataBaseHelper.instance.insertInsModel(
                              InsModel(insDate: formattedDate.value, structureId: controller.structureId.value));


                          var inspObsIndviStrTmpsListLocal=controller.inspObsIndviStrTmpsList!+controller.subList!;

                          for (int i = 0; i < inspObsIndviStrTmpsListLocal.length; i++) {
                            inspObsIndviStrTmpsListLocal[i].insId=insId ;
                          }
                          for (int i = 0; i < inspObsIndviStrTmpsListLocal.length; i++) {
                            DataBaseHelper.instance.insertQ6(inspObsIndviStrTmpsListLocal[i]);
                          }
                          print("embankment save ${ controller.visual_observation.embankmentB}");

                          controller.visual_observation.insId=insId;
                          print(insId);
                          await DataBaseHelper.instance.visualInsert(controller.visual_observation);


                        },
                        child: CustomButton(height: 50, width: 100, text: "Save", radius: 10,backgroundColour: AppColors.primary_color,)),
                    GestureDetector(
                        onTap: (){
                          Get.toNamed(Routes.LOCAL_DATA_PREVIEW);

                        },
                        child: CustomButton(height: 50, width: 100, text: "Preview", radius: 10, backgroundColour: AppColors.primary_color,)),
                    GestureDetector(
                        onTap: (){


                          var inspectionPost =InspectionPost();
                          inspectionPost.sTRUCTID=controller.structureId.value;
                         inspectionPost.iNSPDATE=formattedDate.value;


                          inspectionPost.inspObsIndviStrTmps=controller.inspObsIndviStrTmpsList!+controller.subList!;
                          inspectionPost.visualObservation=controller.visual_observation;
                          print("embankment save ${ inspectionPost.visualObservation?.embankmentB}");
                          print("lenght of ssn${ inspectionPost.inspObsIndviStrTmps!.length}");


                         controller.postData(inspectionPost);


                        },
                        child: CustomButton(height: 50, width: 100, text: "Submit", radius: 10,backgroundColour: AppColors.primary_color))
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}

class clearing extends StatelessWidget {
  String item;
   clearing({
    Key? key,
    required this.controller,
    required this.item,
  }) : super(key: key);

  final ConditionalInspectionPageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        item=="Obstruction of Water Ways"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "obstru_waterway_u2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.obstruWaterwayU2= newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f
                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "obstru_waterway_d2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.obstruWaterwayD2= newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            )
        ):Container(),

      ],
    );
  }
}

class cleaning extends StatelessWidget {
  String item;
   cleaning({
    Key? key,
    required this.controller,
    required this.item,
  }) : super(key: key);

  final ConditionalInspectionPageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        item=="Railing, Rail Posts, Wheel guard"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "deckslab2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.deckslab2= newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f
              ],
            )
        ):Container(),
        item=="Surface of Abutment, End wall Intermediate wall & Wing Wall, Weep Holes, Drain outlet"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "surfaceAbut_b2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.surfaceAbutB2= newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f
                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "surfaceAbut_f2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.surfaceAbutF2= newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            )
        ):Container(),
        item=="Water flow of Slab/ Box/ P- Culverts"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "waterflow2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.waterflow2= newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f

              ],
            )
        ):Container(),


      ],
    );
  }
}



//repairReplacementNewConstruction
class repairReplacementNewConstruction extends StatelessWidget {
  String item;
   repairReplacementNewConstruction({
    Key? key,
    required this.controller,
    required this.item
  }) : super(key: key);

  final ConditionalInspectionPageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        item=="Rail Bar, Rail Post"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "railbarpost_l",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.railbarpostL=newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f
                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "railbarpost_r",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.railbarpostR=newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            )
        ):Container(),
        item=="Guide Post, Traffic Sign, Electric Post"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "guideTraffic_b",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.guideTrafficB=newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f
                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "guideTraffic_f",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.guideTrafficF=newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            )
        ):Container(),
        item=="Surface of Wing Wall and Abutment Wall"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "surfacewall_b2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.surfacewallB2=newValue.text.toString();
                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f
                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "surfacewall_f2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.surfacewallF2=newValue.text.toString();
                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            )
        ):Container(),
        item=="Guide Post, Traffic Sign, Road Marking, Electric Post"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "guideTraffic_b2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.guideTrafficB2=newValue.text.toString();
                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "guideTraffic_f2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.guideTrafficF2=newValue.text.toString();
                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f
              ],
            )
        ):Container(),
        item=="Railing, Rail Posts, Wheel guard"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "railingWheel_l2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                              controller.visual_observation.railingWheelL2= newValue.text.toString();
                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "railingWheel_r2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.railingWheelR2= newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),

              ],
            )
        ):Container(),
        item=="Railing, Rail Posts, Wheel guard_upper"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "steelmember_deck2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.steelmemberDeck2= newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f

              ],
            )
        ):Container(),

      ],
    );
  }
}













//repairRehabilitationReNewConstruction
class repairRehabilitationReNewConstruction extends StatelessWidget {
  String item;
   repairRehabilitationReNewConstruction({
    Key? key,
    required this.controller,
     required this.item,
  }) : super(key: key);

  final ConditionalInspectionPageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        item=="Embankment Slopes of Approach Roads"?Container(
      child: Column(
        children: [

          ExpansionTile(
                      iconColor: AppColors.primary_color,
                      textColor: AppColors.primary_color,
                      backgroundColor: Colors.white,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "embankment_b",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      children: <Widget>[
                      Obx(() => Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              decoration:
                                  InputDecoration(border: InputBorder.none),

                              //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                              hint: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Text(
                                  'Select Your Ratings',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.primary_color,
                                  ),
                                ),
                              ),

                              items:
                                  controller.csList.map((CSListData category) {
                                return DropdownMenuItem(
                                    value: category,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Text(category.text!,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.primary_color,
                                          ),
                                          overflow: TextOverflow.ellipsis),
                                    ));
                              }).toList(),
                              onChanged: (newValue) {
                                newValue as CSListData;
                                controller.selectCSList.value =
                                    newValue.text.toString();
                                controller.visual_observation.embankmentB=newValue.text.toString();

                              },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
          //embankment_f
          ExpansionTile(
            iconColor: AppColors.primary_color,
            textColor: AppColors.primary_color,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "embankment_f",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            children: <Widget>[
              Obx(() => Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButtonFormField(
                    isExpanded: true,
                    decoration:
                    InputDecoration(border: InputBorder.none),

                    //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        'Select Your Ratings',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.primary_color,
                        ),
                      ),
                    ),

                    items:
                    controller.csList.map((CSListData category) {
                      return DropdownMenuItem(
                          value: category,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(category.text!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.primary_color,
                                ),
                                overflow: TextOverflow.ellipsis),
                          ));
                    }).toList(),
                    onChanged: (newValue) {
                      newValue as CSListData;
                      controller.selectCSList.value =
                          newValue.text.toString();
                      controller.visual_observation.embankmentF=newValue.text.toString();

                    },
                  ),
                ),
              ),
              ),
            ],
          ),
        ],
      )
    ):Container(),
        item=="Protective works of Abutment including approaches"?Container(
      child: Column(
        children: [

          ExpansionTile(
                      iconColor: AppColors.primary_color,
                      textColor: AppColors.primary_color,
                      backgroundColor: Colors.white,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "protective_b",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      children: <Widget>[
                      Obx(() => Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              decoration:
                                  InputDecoration(border: InputBorder.none),

                              //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                              hint: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Text(
                                  'Select Your Ratings',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.primary_color,
                                  ),
                                ),
                              ),

                              items:
                                  controller.csList.map((CSListData category) {
                                return DropdownMenuItem(
                                    value: category,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Text(category.text!,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.primary_color,
                                          ),
                                          overflow: TextOverflow.ellipsis),
                                    ));
                              }).toList(),
                              onChanged: (newValue) {
                                newValue as CSListData;
                                controller.selectCSList.value =
                                    newValue.text.toString();
                                controller.visual_observation.protectiveB=newValue.text.toString();

                              },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
          //embankment_f
          ExpansionTile(
            iconColor: AppColors.primary_color,
            textColor: AppColors.primary_color,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "protective_f",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            children: <Widget>[
              Obx(() => Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButtonFormField(
                    isExpanded: true,
                    decoration:
                    InputDecoration(border: InputBorder.none),

                    //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        'Select Your Ratings',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.primary_color,
                        ),
                      ),
                    ),

                    items:
                    controller.csList.map((CSListData category) {
                      return DropdownMenuItem(
                          value: category,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(category.text!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.primary_color,
                                ),
                                overflow: TextOverflow.ellipsis),
                          ));
                    }).toList(),
                    onChanged: (newValue) {
                      newValue as CSListData;
                      controller.selectCSList.value =
                          newValue.text.toString();
                      controller.visual_observation.protectiveF=newValue.text.toString();

                    },
                  ),
                ),
              ),
              ),
            ],
          ),
        ],
      )
    ):Container(),
        item=="Pavement of approaches"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "pavement_b",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.pavementB=newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f
                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "pavement_f",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                              controller.visual_observation.pavementF=newValue.text.toString();
                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            )
        ):Container(),
        item=="Wearing course"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "wearing_deck",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.wearingDeck=newValue.text.toString();
                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f
              ],
            )
        ):Container(),
        item=="Expansion joint/Nosing/Sealing"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "expansion_deck",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.expansionDeck=newValue.text.toString();
                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f
              ],
            )
        ):Container(),
        item=="Checker Plates, Nut- Bolts"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "checker_deck",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.checkerDeck=newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f

              ],
            )
        ):Container(),
        item=="Wheel guard, Walkway"?Container(
            child: Column(
              children: [

                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "wheelGuard_l",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.wheelGuardL=newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                //embankment_f
                ExpansionTile(
                  iconColor: AppColors.primary_color,
                  textColor: AppColors.primary_color,
                  backgroundColor: Colors.white,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "wheelGuard_r",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    Obx(() => Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          decoration:
                          InputDecoration(border: InputBorder.none),

                          //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Select Your Ratings',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary_color,
                              ),
                            ),
                          ),

                          items:
                          controller.csList.map((CSListData category) {
                            return DropdownMenuItem(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(category.text!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                      overflow: TextOverflow.ellipsis),
                                ));
                          }).toList(),
                          onChanged: (newValue) {
                            newValue as CSListData;
                            controller.selectCSList.value =
                                newValue.text.toString();
                            controller.visual_observation.wheelGuardR=newValue.text.toString();

                          },
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            )
        ):Container(),
      ],
    );
  }
}
import 'package:flutter/material.dart';

import '../../../common_widget/text.dart';

import '../../../data/database_helper/databse_helper.dart';
import '../../../model/ins_model.dart';
import '../../../utils/colors.dart';
import 'package:flutter/material.dart';
import"package:get/get.dart";
import '../../../data/database_helper/databse_helper.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimens.dart';
import '../../local_data_preview/controllers/local_data_preview_controller.dart';
import '../controllers/elements_details_page_controller.dart';
import '../../conditional_Inspection_page/model/getCSListResponse.dart';
import '../controllers/elements_details_page_controller.dart';
import 'package:get/get.dart';
class SafetyBridgeStructural extends StatelessWidget {
  RxInt len = 0.obs;
  LocalDataPreviewController localDataPreviewController =
  Get.find<LocalDataPreviewController>();

  visualMethod() async {

    controller.q7list = await DataBaseHelper.instance
        .visaulQuery(localDataPreviewController.insId);
    len.value = controller.q6list.length;
    print(len);
  }
   SafetyBridgeStructural({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ElementsDetailsPageController controller;

  @override
  Widget build(BuildContext context) {
    visualMethod();
    return Container(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16,),
                Text('Safety Bridge Structural',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
                SizedBox(height: 3),
                Text('CS1=Good; CS2=Fair; CS3=Poor; CS4=Severe;',style: TextStyle(fontSize: 8),),
                SizedBox(height: 3,),
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
                                        Text(controller.repairRehabilitationReNewConstruction[index], style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    children: <Widget>[

                                      Column(
                                        children: [
                                          controller.repairRehabilitationReNewConstruction[index]=="Embankment Slopes of Approach Roads"?Container(
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
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),

                                                          ),
                                                          child: BigText(text: controller.q7list[0]['embankment_b']),
                                                        ),
                                                      ],
                                                    ),
                                                    children: <Widget>[

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
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),

                                                          ),
                                                          child: BigText(text: controller.q7list[0]['embankment_f']),
                                                        )
                                                      ],
                                                    ),
                                                    children: <Widget>[

                                                    ],
                                                  ),
                                                ],
                                              )
                                          ):Container(),
                                          controller.repairRehabilitationReNewConstruction[index]=="Protective works of Abutment including approaches"?Container(
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
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),

                                                          ),
                                                          child: BigText(text: controller.q7list[0]['protective_b']),
                                                        )
                                                      ],
                                                    ),
                                                    children: <Widget>[

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
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),

                                                          ),
                                                          child: BigText(text: controller.q7list[0]['protective_f']),
                                                        )
                                                      ],
                                                    ),
                                                    children: <Widget>[

                                                    ],
                                                  ),
                                                ],
                                              )
                                          ):Container(),
                                          controller.repairRehabilitationReNewConstruction[index]=="Pavement of approaches"?Container(
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
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),

                                                          ),
                                                          child: BigText(text: controller.q7list[0]['pavement_b']),
                                                        )
                                                      ],
                                                    ),
                                                    children: <Widget>[

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
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),

                                                          ),
                                                          child: BigText(text: controller.q7list[0]['pavement_f']),
                                                        )
                                                      ],
                                                    ),
                                                    children: <Widget>[

                                                    ],
                                                  ),
                                                ],
                                              )
                                          ):Container(),
                                          controller.repairRehabilitationReNewConstruction[index]=="Wearing course"?Container(
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
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),

                                                          ),
                                                          child: BigText(text: controller.q7list[0]['wearing_deck']),
                                                        )
                                                      ],
                                                    ),
                                                    children: <Widget>[

                                                    ],
                                                  ),
                                                  //embankment_f
                                                ],
                                              )
                                          ):Container(),
                                          controller.repairRehabilitationReNewConstruction[index]=="Expansion joint/Nosing/Sealing"?Container(
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
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),

                                                          ),
                                                          child: BigText(text: controller.q7list[0]['expansion_deck']),
                                                        )
                                                      ],
                                                    ),
                                                    children: <Widget>[

                                                    ],
                                                  ),
                                                  //embankment_f
                                                ],
                                              )
                                          ):Container(),
                                          controller.repairRehabilitationReNewConstruction[index]=="Checker Plates, Nut- Bolts"?Container(
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
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),

                                                          ),
                                                          child: BigText(text: controller.q7list[0]['checker_deck']),
                                                        )
                                                      ],
                                                    ),
                                                    children: <Widget>[

                                                    ],
                                                  ),
                                                  //embankment_f

                                                ],
                                              )
                                          ):Container(),
                                          controller.repairRehabilitationReNewConstruction[index]=="Wheel guard, Walkway"?Container(
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
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),

                                                          ),
                                                          child: BigText(text: controller.q7list[0]['wheelGuard_l']),
                                                        )
                                                      ],
                                                    ),
                                                    children: <Widget>[

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
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),

                                                          ),
                                                          child: BigText(text: controller.q7list[0]['wheelGuard_r']),
                                                        )
                                                      ],
                                                    ),
                                                    children: <Widget>[

                                                    ],
                                                  ),
                                                ],
                                              )
                                          ):Container(),
                                        ],
                                      )


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
                                                  //repairReplacementNewConstruction(controller: controller,item: controller.repairReplacementNewConstruction[index],)
                                                  //RepairReplacementNewConstruction(controller: controller,item: controller.repairReplacementNewConstruction[index], )
                                                  Column(
                                                    children: [
                                                      controller.repairReplacementNewConstruction[index]=="Rail Bar, Rail Post"?Container(
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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['railbarpost_l']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['railbarpost_r']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                      ):Container(),
                                                      controller.repairReplacementNewConstruction[index]=="Guide Post, Traffic Sign, Electric Post"?Container(
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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['guideTraffic_b']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['guideTraffic_f']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                      ):Container(),
                                                      controller.repairReplacementNewConstruction[index]=="Surface of Wing Wall and Abutment Wall"?Container(
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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['surfacewall_b2']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['surfacewall_f2']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                      ):Container(),
                                                      controller.repairReplacementNewConstruction[index]=="Guide Post, Traffic Sign, Road Marking, Electric Post"?Container(
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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['guideTraffic_b2']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['guideTraffic_f2']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

                                                                ],
                                                              ),
                                                              //embankment_f
                                                            ],
                                                          )
                                                      ):Container(),
                                                      controller.repairReplacementNewConstruction[index]=="Railing, Rail Posts, Wheel guard"?Container(
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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['railingWheel_l2']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['railingWheel_r2']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

                                                                ],
                                                              ),

                                                            ],
                                                          )
                                                      ):Container(),
                                                      controller.repairReplacementNewConstruction[index]=="Railing, Rail Posts, Wheel guard_upper"?Container(
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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['steelmember_deck2']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

                                                                ],
                                                              ),
                                                              //embankment_f

                                                            ],
                                                          )
                                                      ):Container(),

                                                    ],
                                                  )
                                                 // repairReplacementNewConstruction
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
                                                //cleaning(controller: controller,item: controller.cleaning[index],)
                                               // Cleaning(controller: controller,item:controller.cleaning[index] ,)
                                                Column(
                                                  children: [
                                                    controller.cleaning[index]=="Railing, Rail Posts, Wheel guard"?Container(
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
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(10),

                                                                    ),
                                                                    child: BigText(text: controller.q7list[0]['deckslab2']),
                                                                  ),
                                                                ],
                                                              ),
                                                              children: <Widget>[

                                                              ],
                                                            ),
                                                            //embankment_f
                                                          ],
                                                        )
                                                    ):Container(),
                                                    controller.cleaning[index]=="Surface of Abutment, End wall Intermediate wall & Wing Wall, Weep Holes, Drain outlet"?Container(
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
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(10),

                                                                    ),
                                                                    child: BigText(text: controller.q7list[0]['surfaceAbut_b2']),
                                                                  ),
                                                                ],
                                                              ),
                                                              children: <Widget>[

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
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(10),

                                                                    ),
                                                                    child: BigText(text: controller.q7list[0]['surfaceAbut_f2']),
                                                                  ),
                                                                ],
                                                              ),
                                                              children: <Widget>[

                                                              ],
                                                            ),
                                                          ],
                                                        )
                                                    ):Container(),
                                                    controller.cleaning[index]=="Water flow of Slab/ Box/ P- Culverts"?Container(
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
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(10),

                                                                    ),
                                                                    child: BigText(text: controller.q7list[0]['waterflow2']),
                                                                  ),
                                                                ],
                                                              ),
                                                              children: <Widget>[

                                                              ],
                                                            ),
                                                            //embankment_f

                                                          ],
                                                        )
                                                    ):Container(),


                                                  ],
                                                )

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
                                                  //clearing(controller: controller,item: controller.clearing[index],)
                                                  //Clearing(controller: controller,item:controller.clearing[index],)
                                                  Column(
                                                    children: [
                                                      controller.clearing[index]=="Obstruction of Water Ways"?Container(
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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['obstru_waterway_u2']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

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
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(10),

                                                                      ),
                                                                      child: BigText(text: controller.q7list[0]['obstru_waterway_d2']),
                                                                    ),
                                                                  ],
                                                                ),
                                                                children: <Widget>[

                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                      ):Container(),

                                                    ],
                                                  )

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

              ],
            ),
          ),
        ),
      ),
    );
  }
}





import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lged_inspection/app/modules/inventoryInspection/model/GetPhysicalSelectionListResponse.dart';
import 'package:lged_inspection/app/utils/colors.dart';
import '../../../utils/app_constants.dart';
import '../controllers/home_controller.dart';
import '../controllers/inventory_inspection_controller.dart';
import '../model/physicalCharacteristicsPostModel.dart';

class PhysicalCharacteristics extends StatelessWidget {
  PhysicalCharacteristics({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final InventoryInspectionController controller;
  var spanIndex =" ".obs;
  var spanName =" ".obs;
  var rbmPhyInvNo = 0.0.obs;
  var subEleStrId = 0.obs;


  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 20,),
            // Container(
            //   height: 500,
            //   width:500,
            //   color: Colors.amberAccent,
            //   child: Obx(()=>Text("${controller.spanInfo.value.result!.toJson()}",style: TextStyle(
            //       color: Colors.black
            //   ),),)
            // ),
            // Container(
            //   height: 500,
            //   width:500,
            //   color: Colors.amberAccent,
            //   child: Obx(()=>Text("rbmPhyInvNo=${rbmPhyInvNo}"+"subEleStrId=${subEleStrId}",style: TextStyle(
            //       color: Colors.black
            //   ),),)
            // ),
            Text("Super-Structure Details", style: TextStyle(fontSize: 16),),
            SizedBox(height: 20,),

            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                         color: Colors.grey.shade400,
                                              width: .5,// This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("insp_strno:", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.inspPhysical.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                         color: Colors.grey.shade400,
                                              width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("inv_no:", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.inVpPhysical.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                         color: Colors.grey.shade400,
                                              width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Width (m)", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex:2,
                    child: Text("${controller.sup_width.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Bracing:", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sup_bracing.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Carriageway Width (m):", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sup_carri_width.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Source of Electricty :", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sup_electricty_sur.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Wearing Course :", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sup_wearing_course.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text("Bank To Bank Distance(m) :",
                      style: TextStyle(fontSize: 12),),
                  ),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sup_bank_distance.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Sidewalk (L/S) (m) :", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sup_sidewalk_ls.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Sidewalk (R/S) (m) :", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sup_sidewalk_rs.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Railing Type :", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sup_railing_types.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text("NO. of Light Posts (L/S) :",
                      style: TextStyle(fontSize: 12),),
                  ),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sup_light_posts_l.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Tie/Hanger :", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sup_tie_hanger.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text("NO. of Light Posts (R/S) :",
                      style: TextStyle(fontSize: 12),),
                  ),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sup_light_posts_r.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),

            SizedBox(height: 15,),





            //Span Information
            Container(
                padding: EdgeInsets.only(
                  bottom: 3, // This can be the space you need between text and underline
                ),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(
                      color: Colors.grey.shade400,
                      width: .5, // This would be the width of the underline
                    ))
                ),
                child: Text("Span Information ${controller.spanInfo.value.result?.rbmPhyCharspanModels!=null?controller.spanInfo.value.result?.rbmPhyCharspanModels!.length:"Span List Empty"}", style: TextStyle(fontSize: 16),)),
            //Text("${controller.spanInfo.value.result.rbmPhyCharspanModels}",style: TextStyle(fontSize: 16),),
            Obx(()=>ListView.builder(

              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              //itemForSpan.value,
              itemCount: controller.spanInfo.value.result?.rbmPhyCharspanModels!=null?controller.spanInfo.value.result?.rbmPhyCharspanModels!.length:0,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    //sl_no

                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                      bottom: 3, // This can be the space you need between text and underline
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(
                                      color: Colors.grey.shade400, width: .5,  // This would be the width of the underline
                                        ))
                                    ),
                                    child: Text('Span Details',
                                      style: TextStyle(fontSize: 16),),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("SpanName :" +
                                      controller.spanInfo.value.result!
                                          .rbmPhyCharspanModels![index]
                                          .spanName.toString(),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text("SpanLength :" +
                                      controller.spanInfo.value.result!
                                          .rbmPhyCharspanModels![index]
                                          .spanLength.toString(),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text("invNo :" +
                                      controller.spanInfo.value.result!
                                          .rbmPhyCharspanModels![index].invNo
                                          .toString(),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text("slNo :" +
                                      controller.spanInfo.value.result!
                                          .rbmPhyCharspanModels![index].slNo
                                          .toString(),
                                    style: TextStyle(fontSize: 12),
                                  ),

                                ],
                              ),

                            ],
                          ),

                        ],
                      ),
                        trailing: ElevatedButton(child: Text("Show Details"),onPressed:(){
                          spanIndex.value=index.toString();
                          spanName.value = controller.spanInfo.value.result!
                              .rbmPhyCharspanModels![index]
                              .spanName.toString();
                          // controller.invNoForCompo.value= controller.spanInfo.value.result!
                          //     .rbmPhyCharspanModels![index].invNo!;
                          // Get.find<HomeController>().invForCompo=controller.invNoForCompo.value;
                          print('controller.invNoForCompo.value${controller.invNoForCompo.value}');
                        } ,)
                  ),
                );
              },
            ),),
            Column(

              children: [

                SizedBox(
                  height: 10,
                ),
                Obx(()=>spanIndex.value!=" "?ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.spanInfo.value
                      .result!.rbmPhyCharspanModels![int.parse(spanIndex.value)]
                      .components!.length,
                  itemBuilder: (BuildContext context,
                      int index) {
                    return Card(
                      child: ListTile(
                        //sl_no
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start,
                            children: [

                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          bottom: 3, // This can be the space you need between text and underline
                                        ),
                                        decoration: BoxDecoration(
                                            border: Border(bottom: BorderSide(
                                              color: Colors.grey.shade400,
                                              width: .5,  // This would be the width of the underline
                                            ))
                                        ),
                                        child: Text('Component Details',
                                          style: TextStyle(fontSize: 16),),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Span Name :" +spanName.value,
                                        style: TextStyle(
                                            fontSize: 12),
                                      ),
                                      Text("Element Name :" +
                                          controller
                                              .spanInfo
                                              .value.result!
                                              .rbmPhyCharspanModels![int.parse(spanIndex.value)]
                                              .components![index]
                                              .elementName!,
                                        style: TextStyle(
                                            fontSize: 12),
                                      ),
                                      Text(
                                        "Element Serial :" +
                                            controller
                                                .spanInfo
                                                .value
                                                .result!
                                                .rbmPhyCharspanModels![int.parse(spanIndex.value)]
                                                .components![index]
                                                .elementSerial
                                                .toString(),
                                        style: TextStyle(
                                            fontSize: 12),
                                      ),
                                      Text("Component Id :" +
                                          controller
                                              .spanInfo
                                              .value.result!
                                              .rbmPhyCharspanModels![int.parse(spanIndex.value)]
                                              .components![index]
                                              .componentId
                                              .toString(),
                                        style: TextStyle(
                                            fontSize: 12),
                                      ),
                                      // Text("SpanLength :"+controller.spanInfo.value.result!.rbmPhyCharspanModels![index].spanLength!),
                                    ],
                                  )

                                ],
                              )

                            ],
                          )
                      ),
                    );
                  },
                ):Container())
              ],
            ),





            SizedBox(height: 15,),
            Text("Sub-Structure Details", style: TextStyle(fontSize: 16),),
            SizedBox(height: 15,),

            Obx(()=>ListView.builder(

              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              //itemForSpan.value,
              itemCount: controller.spanInfo.value.result?.subElementDetailsModels!=null?controller.spanInfo.value.result?.subElementDetailsModels!.length:0,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    //sl_no

                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                      bottom: 3, // This can be the space you need between text and underline
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(
                                          color: Colors.grey.shade400, width: .5,  // This would be the width of the underline
                                        ))
                                    ),
                                    child: Text('Span Details',
                                      style: TextStyle(fontSize: 16),),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Str Id :" +
                                      controller.spanInfo.value.result!
                                          .subElementDetailsModels![index].strId
                                          .toString(),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text("Sub Element Id :" +
                                      controller.spanInfo.value.result!
                                          .subElementDetailsModels![index].subElementId.toString(),

                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text("Sub Element Serial :" +
                                      controller.spanInfo.value.result!
                                          .subElementDetailsModels![index]
                                          .subElementSerial.toString(),
                                    style: TextStyle(fontSize: 12),
                                  ),


                                ],
                              ),

                            ],
                          ),

                        ],
                      ),

                  ),
                );
              },
            ),),

            SizedBox(height: 15,),



            //Abutment/End Wall
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex:2,
                      child: Text("Abutment/End Wall :", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sub_abutment_end.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex:2,
                      child: Text("Wing Wall :", style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sub_wing.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 3, // This can be the space you need between text and underline
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: .5, // This would be the width of the underline
                  ))
              ),
              child: Row(
                children: [
                  Expanded(
                    flex:2,
                    child: Text(
                      "Pier/Intermediate Wall :", style: TextStyle(fontSize: 12),),
                  ),
                  SizedBox(width: 8,),
                  Obx(() => Expanded(
                    flex: 2,
                    child: Text("${controller.sub_intermediate.value}",
                      style: TextStyle(fontSize: 12),),
                  ),)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Text("Foundation Type", style: TextStyle(fontSize: 16),),
            SizedBox(height: 15,),
            Row(
              children: [
                Text("Abutment :", style: TextStyle(fontSize: 12),),
                SizedBox(width: 8,),
                //Obx(()=> Text("${controller.tl_assessed_vehicle.value}",style: TextStyle(fontSize: 12),),)
              ],
            ),
            Row(
              children: [
                Text("Pier:", style: TextStyle(fontSize: 12),),
                SizedBox(width: 8,),
                // Obx(()=> Text("${controller.tl_assessed_vehicle.value}",style: TextStyle(fontSize: 12),),)
              ],
            ),
            Row(
              children: [
                Text("Wing Wall :", style: TextStyle(fontSize: 12),),
                SizedBox(width: 8,),
                // Obx(()=> Text("${controller.tl_assessed_vehicle.value}",style: TextStyle(fontSize: 12),),)
              ],
            ),


            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                  // rbmPhyInvNo.value= controller.spanInfo.value.result!
                  //     .rbmPhyCharspanModels![0].invNo!;
                  // Get.find<HomeController>().invForCompo= rbmPhyInvNo.value;

                  // subEleStrId.value=controller.spanInfo.value.result!
                  //     .subElementDetailsModels![0].strId!.toInt();
                  // controller.StrId.value=subEleStrId.value;
                  // print('controller.StrId.value${controller.StrId.value}');
                  // print('controller.StrId.value${controller.StrId.value.runtimeType}');

                  if (controller.physicalCharacteristicsButton.value == true) {
                    controller.physicalCharacteristicsButton.value = false;
                  } else {
                    controller.physicalCharacteristicsButton.value = true;
                  }
                },
                child: Text('Update')),

            Obx(() =>
            controller.physicalCharacteristicsButton.value == true
                ? physicalCharacteristicsDetails(controller: controller)
                : Container())

          ],
        ),
      ),
    );
  }
//SuperStructure

}







class physicalCharacteristicsDetails extends StatelessWidget {
  physicalCharacteristicsDetails({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final InventoryInspectionController controller;
  final bridgeController = Get.put(HomeController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    controller.count.value = 1;
    var rbmPhyCharspanModels = <RbmPhyCharspanModels>[];
    return GetX<HomeController>(
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Super-Structure Details ${bridgeController.invForCompo.value}', style: TextStyle(fontSize: 16),),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text("Span Section${bridgeController.invForCompo.value}"),
                    ],
                  ),
                  spanSection(),
                  ElevatedButton(
                    onPressed: bridgeController.addSpanDialog,
                    child: const Text("Add Span"),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text("Width (m)", style: TextStyle(fontSize: 12),),
                  ),
                  TextFormField(
                    onChanged: (v) {
                      controller.sup_widthP = double.parse(v);
                      // controller.model.supWidth=controller.sup_widthP;
                      // print('Model val ${controller.model.supWidth}');
                    },
                    validator: (value) => value!.isEmpty ? '*field required' : null,
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(6, 14, 14, 0),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: AppColors.primary_color,
                          ),
                        ),

                        focusColor: AppColors.primary_color,
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      "Carriageway Width (m)", style: TextStyle(fontSize: 12),),
                  ),
                  TextFormField(
                    onChanged: (v) {
                      controller.sup_carri_widthP = double.parse(v);
                    },
                    validator: (value) => value!.isEmpty ? '*field required' : null,
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(6, 14, 14, 0),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: AppColors.primary_color,
                          ),
                        ),

                        focusColor: AppColors.primary_color,
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      "Sidewalk (L/S) (m)", style: TextStyle(fontSize: 12),),
                  ),
                  TextFormField(
                    onChanged: (v) {
                      controller.sup_sidewalk_lsP = double.parse(v);
                    },
                    validator: (value) => value!.isEmpty ? '*field required' : null,
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(6, 14, 14, 0),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: AppColors.primary_color,
                          ),
                        ),

                        focusColor: AppColors.primary_color,
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      "Sidewalk (R/S) (m)", style: TextStyle(fontSize: 12),),
                  ),
                  TextFormField(
                    onChanged: (v) {
                      controller.sup_sidewalk_rsP = double.parse(v);
                    },
                    validator: (value) => value!.isEmpty ? '*field required' : null,
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(6, 14, 14, 0),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: AppColors.primary_color,
                          ),
                        ),

                        focusColor: AppColors.primary_color,
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  SizedBox(height: 10),

                  //spanMethod(0),
                  //   Row(
                  //     children: [
                  //       Expanded(
                  //           flex: 1,
                  //           child: TextFormField(
                  //             onChanged: (v){
                  //               controller.spanSerialV.value=v;
                  //             },
                  //             controller: controller.spanSerial,
                  //             decoration: InputDecoration(hintText: "Span Serial"),
                  //           )),
                  //       SizedBox(
                  //         width: 10,
                  //       ),
                  //       Expanded(
                  //           flex: 2,
                  //           child: TextFormField(
                  //            onChanged: (v){
                  //              controller.spanLengthV.value=v;
                  //            },
                  //             controller: controller.spanLength,
                  //             decoration: InputDecoration(hintText: "Span Length"),
                  //           )),
                  //     ],
                  //   ),
                  //
                  //
                  //   ElevatedButton(onPressed: () async{
                  //     controller.addSpan(length: controller.spanLengthV.value,serial: controller.spanSerialV.value);
                  //       var aList =[].obs;
                  //       controller.spanListForL.value.add(controller.spanSerialV.value);
                  //       aList.value.addAll(controller.spanListForL.value);
                  //     controller.newList.value =await aList.value;
                  //     print(controller.spanListForL);
                  //   }, child: Text("Add Span")),
                  //
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  // Row(
                  //   children: [
                  //     //elementName
                  //       Expanded(
                  //         flex: 2,
                  //         child: Obx(
                  //           () => DropdownButtonFormField(
                  //             isExpanded: true,
                  //             decoration: InputDecoration(border: InputBorder.none),
                  //             // value: controller.inventoryElementList.length != 0
                  //             //     ? controller.inventoryElementList[0]
                  //             //     : null,
                  //             //value:controller.inventoryElementList.isNotEmpty?controller.inventoryElementList[0] : null,
                  //             hint: Text(
                  //               'Elements',
                  //               style: TextStyle(
                  //                 fontSize: 12,
                  //                 color: AppColors.primary_color,
                  //               ),
                  //             ),
                  //
                  //             items: controller.inventoryElementList
                  //                 .map((ElementList category) {
                  //               return DropdownMenuItem(
                  //                   value: category.value,
                  //                   child: Padding(
                  //                     padding: const EdgeInsets.only(left: 12),
                  //                     child: Text(category.text!,
                  //                         style: TextStyle(
                  //                           fontSize: 12,
                  //                           color: AppColors.primary_color,
                  //                         ),
                  //                         overflow: TextOverflow.ellipsis),
                  //                   ));
                  //             }).toList(),
                  //             onChanged: (newValue) {
                  //
                  //               print(newValue.toString());
                  //               controller.elementName.value=newValue.toString();
                  //               print(controller.elementName.value);
                  //             },
                  //           ),
                  //         ),
                  //       ),
                  //       Expanded(
                  //         flex: 2,
                  //         child: TextFormField(
                  //           onChanged: (v){
                  //             controller.elementSerialV.value=v;
                  //           },
                  //           controller: controller.elementSerial,
                  //           decoration: InputDecoration(hintText: "Serial",
                  //           hintStyle: TextStyle(
                  //             fontSize: 12
                  //           )
                  //           ),
                  //         )),
                  //       Expanded(
                  //       flex: 2,
                  //       child: Obx(
                  //             () => DropdownButtonFormField(
                  //           isExpanded: true,
                  //           decoration: InputDecoration(border: InputBorder.none),
                  //
                  //           //value:controller.newList.isNotEmpty?controller.newList[0]. : null,
                  //           hint: Text(
                  //             'Span Serial',
                  //             style: TextStyle(
                  //               fontSize: 12,
                  //               color: AppColors.primary_color,
                  //             ),
                  //           ),
                  //
                  //           items: controller.newList.value
                  //               .map(( category) {
                  //             return DropdownMenuItem(
                  //                 value: category,
                  //                 child: Padding(
                  //                   padding: const EdgeInsets.only(left: 12),
                  //                   child: Text(category,
                  //                       style: TextStyle(
                  //                         fontSize: 12,
                  //                         color: AppColors.primary_color,
                  //                       ),
                  //                       overflow: TextOverflow.ellipsis),
                  //                 ));
                  //           }).toList(),
                  //           onChanged: (newValue) {
                  //             controller.spanSerialForElement.value =newValue.toString();
                  //             print(controller.spanSerialForElement.value);
                  //           },
                  //         ),
                  //       ),
                  //       // Obx(
                  //       //       () => DropdownButtonFormField(
                  //       //     isExpanded: true,
                  //       //     decoration: InputDecoration(border: InputBorder.none),
                  //       //
                  //       //     //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                  //       //     hint: Text(
                  //       //       'Select Your Sapn',
                  //       //       style: TextStyle(
                  //       //         fontSize: 12,
                  //       //         color: AppColors.primary_color,
                  //       //       ),
                  //       //     ),
                  //       //
                  //       //     items: controller.spanListForL
                  //       //         .map((String category) {
                  //       //       return DropdownMenuItem(
                  //       //           value: category.toString(),
                  //       //           child: Padding(
                  //       //             padding: const EdgeInsets.only(left: 12),
                  //       //             child: Text(category!,
                  //       //                 style: TextStyle(
                  //       //                   fontSize: 12,
                  //       //                   color: AppColors.primary_color,
                  //       //                 ),
                  //       //                 overflow: TextOverflow.ellipsis),
                  //       //           ));
                  //       //     }).toList(),
                  //       //     onChanged: (newValue) {
                  //       //       print(newValue);
                  //       //     },
                  //       //   ),
                  //       // ),
                  //     )
                  //   ],
                  // ),
                  //
                  //   // Obx(()=>Text(controller.count.value.toString())),
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  //   ElevatedButton(onPressed: (){
                  //     controller.addElement(controller.elementName.value,
                  //         controller.elementSerialV.value,
                  //         controller.spanSerialForElement.value,
                  //         controller.spanLengthV.value);
                  //   }, child: Text("Add Element")),
                  //
                  //   Obx(()=> ListView.builder(
                  //       padding: EdgeInsets.all(0),
                  //       shrinkWrap: true,
                  //       physics: NeverScrollableScrollPhysics(),
                  //       itemCount: controller.elementCount.value,
                  //       itemBuilder: (BuildContext context, int index) {
                  //         return Container(
                  //           decoration:
                  //           BoxDecoration(
                  //               borderRadius: BorderRadius.circular(5),
                  //               border: Border.all(color: Colors.black26)),
                  //           child: Row(
                  //             children: [
                  //               Expanded(
                  //                 child: ListTile(
                  //                   title: Column(
                  //                     crossAxisAlignment: CrossAxisAlignment.start,
                  //                   children:[
                  //                     Text("Element Name :"+controller.forElementData[index].elementName.toString()),
                  //                     Text("Element Serial :"+controller.forElementData[index].elementSerialNumber.toString()),
                  //                     Text("Span Serial :"+controller.forElementData[index].spanSerialNumber.toString()),
                  //                     Text("Span Length :"+controller.forElementData[index].spanLength.toString()),
                  //                   ]
                  //                   ),
                  //                   onTap: (){
                  //                     controller.addCount.value++;
                  //                     controller.addData(eName:controller.forElementData[index].elementName.toString() ,
                  //                         spSerial: controller.forElementData[index].spanSerialNumber.toString(),
                  //                         eSerial: controller.forElementData[index].elementSerialNumber.toString(),
                  //                         spLength: controller.forElementData[index].spanLength.toString(),
                  //                       index: index
                  //                     );
                  //                     // controller.model.rbmPhyCharspanModels?[index].spanName=controller.forElementData[index].spanSerialNumber.toString();
                  //                     // controller.model.rbmPhyCharspanModels?[index].spanLength=controller.forElementData[index].spanLength.toString();
                  //                     // controller.model.rbmPhyCharspanModels?[index].components?[index].elementSerial=int.parse(controller.forElementData[index].elementSerialNumber.toString());
                  //                     // controller.model.rbmPhyCharspanModels?[index].components?[index].componentId=int.parse(controller.forElementData[index].elementName.toString());
                  //                     // rbmPhyCharspanModels[index].spanName=controller.forElementData[index].spanSerialNumber.toString();
                  //                   },
                  //                   trailing: IconButton(onPressed: (){
                  //                     controller.removeElement(index);
                  //                   },icon: Icon(Icons.clear)),
                  //                   dense: false,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         );
                  //       }),),
                  SizedBox(
                    height: 10,
                  ),


                  Card(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text("Wearing Course"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Obx(() => wearingCourse())),
                      ],
                    ),
                    elevation: 10,
                  ),
                  Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Types of Railing"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Obx(() => typesOfRailing())),
                      ],
                    ),
                  ),

                  Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("SteelSource of Electricty "),
                            )),
                        Expanded(
                            flex: 3,
                            child: Obx(() => sourceOfElectricty())),
                      ],
                    ),
                  ),

                  Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Tie/Hanger"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Obx(() => tieHanger())),
                      ],
                    ),
                  ),
                  //bracingList
                  Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Bracing"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Obx(() => bracing())),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text("Bank To Bank Distance at Bridge Site (m)",
                      style: TextStyle(fontSize: 12),),
                  ),
                  TextFormField(
                    onChanged: (v) {
                      controller.sup_bank_distanceP = double.parse(v);
                    },
                    validator: (value) => value!.isEmpty ? '*field required' : null,
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(6, 14, 14, 0),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: AppColors.primary_color,
                          ),
                        ),

                        focusColor: AppColors.primary_color,
                        filled: true,
                        fillColor: Colors.white),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text("NO. of Light Posts (L/S)",
                      style: TextStyle(fontSize: 12),),
                  ),
                  TextFormField(
                    onChanged: (v) {
                      controller.sup_light_posts_lP = double.parse(v);
                    },
                    validator: (value) => value!.isEmpty ? '*field required' : null,
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(6, 14, 14, 0),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: AppColors.primary_color,
                          ),
                        ),

                        focusColor: AppColors.primary_color,
                        filled: true,
                        fillColor: Colors.white),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text("NO. of Light Posts (R/S)",
                      style: TextStyle(fontSize: 12),),
                  ),
                  TextFormField(
                    onChanged: (v) {
                      controller.sup_light_posts_rP = double.parse(v);
                    },
                    validator: (value) => value!.isEmpty ? '*field required' : null,
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(6, 14, 14, 0),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: AppColors.primary_color,
                          ),
                        ),

                        focusColor: AppColors.primary_color,
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      "Sub-Structure Details ${controller.structureid.value}", style: TextStyle(fontSize: 16),),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //Element add
                  Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex:2,
                              child: Obx(
                                    () => DropdownButtonFormField(
                                  isExpanded: true,
                                  decoration: InputDecoration(border: InputBorder.none),
                                  // value: controller.inventoryElementList.length != 0
                                  //     ? controller.inventoryElementList[0]
                                  //     : null,
                                  //value:controller.inventoryElementList.isNotEmpty?controller.inventoryElementList[0] : null,
                                  hint: Padding(
                                    padding: const EdgeInsets.only(left: 6),
                                    child: Text(
                                      'Elements',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.primary_color,
                                      ),
                                    ),
                                  ),

                                  items: controller.inventoryElementList
                                      .map((ElementList category) {
                                    return DropdownMenuItem(
                                        value: category.value,
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

                                    print(newValue.toString());
                                    controller.subElementName.value=double.parse(newValue.toString());
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 6),
                                    child: Text("Serial",
                                      style: TextStyle(fontSize: 12),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8,right: 6),
                                    child: TextFormField(
                                      controller: controller.subElementSerialTC,
                                      onChanged: (v) {
                                        controller.subElementSerial.value = int.parse(v);
                                      },
                                      validator: (value) => value!.isEmpty ? '*field required' : null,
                                      decoration: InputDecoration(
                                          isDense: true,
                                          contentPadding: EdgeInsets.fromLTRB(6, 14, 14, 0),
                                          border: OutlineInputBorder(
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(8.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8.0),
                                            borderSide: BorderSide(
                                              color: AppColors.primary_color,
                                            ),
                                          ),


                                          focusColor: AppColors.primary_color,
                                          filled: true,
                                          fillColor: Colors.white),
                                    ),
                                  ),




                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                       Obx(() =>  ListView.builder(

                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.subElementCount.value,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration:
                        BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black26)),
                        child: ListTile(
                            title:  Text("Element serial :${controller.subElementList.value[index].sub_element_serial!}",style: TextStyle(fontSize: 12),),
                            subtitle:  Text("Element Name :${controller.subElementList.value[index].sub_element_id!}",style: TextStyle(fontSize: 12),)
                        ),
                      );
                    })),
                        SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(onPressed: (){
                          controller.StrId.value=int.parse(controller.structureid.value);
                          controller.addSubElement(controller.subElementName.value, controller.subElementSerial.value,controller.StrId.value);
                        }, child: Text("Add Element"))

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),


                  //Abutment/End Wall
                  Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Abutment/End Wall"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Obx(() => SubStructureAbutmentEndWall())),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Wing Wall"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Obx(() => SubStructureWingWall())),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Pier/Intermediate Wall "),
                            )),
                        Expanded(
                            flex: 3,
                            child: Obx(() => SubStructurePierIntermediateWall())),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      "Foundation Type", style: TextStyle(fontSize: 16),),
                  ),
                  //Foundation Type
                  Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Abutment"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Obx(() => FoundationAbutment())),
                      ],
                    ),
                  ),

                  Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Wing Wall"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Obx(() => FoundationWingWall())),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        Expanded(

                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Pier"),
                            )),
                        Expanded(
                            flex: 3,
                            child: Obx(() => FoundationPier())),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),

                  const SizedBox(height: 10),
                  Center(
                    child: Get.find<HomeController>().invForCompo.value==0.0?ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary_color
                        ),
                        onPressed: () {
                          controller.buttonVal.value = 1;
                          var id = controller.structureid.value;
                          log("iddd${id}");
                          int newId = int.parse(id);
                          print(newId);
                          print(newId.runtimeType);
                          print(controller.prepareData);
                          for (var span in bridgeController.spanData) {
                            log(span.toJson().toString());
                          }
                          if(_formKey.currentState?.validate()==true){
                            print("Success");
                            controller.model.inspStrno = controller.inspPhysical.value;
                            controller.model.invNo = newId;
                            controller.model.supWidth = controller.sup_widthP;
                            controller.model.supCarriWidth =controller.sup_carri_widthP;
                            controller.model.supSidewalkLs = controller.sup_sidewalk_lsP;
                            controller.model.supSidewalkRs = controller.sup_sidewalk_rsP;
                            controller.model.supBankDistance = controller.sup_bank_distanceP;
                            controller.model.supLightPostsL = controller.sup_light_posts_lP;
                            controller.model.supLightPostsR = controller.sup_light_posts_rP;
                            controller.model.supElectrictySur = controller.sup_electricty_surP;
                            controller.model.supWearingCourse = controller.sup_wearing_courseP;
                            controller.model.supRailingTypes = controller.sup_railing_typesP;

                            controller.model.supTieHanger = controller.sup_tie_hangerP;
                            controller.model.supBracing = controller.sup_bracingP;
                            controller.model.subAbutment = controller.sub_abutment_endP;
                            controller.model.rbmPhyCharspanModels = bridgeController.spanData;
                            controller.model.subElementDetailsModels=controller.subElementList.value;
                            controller.model.subIntermediate=controller.sub_intermediateP;
                            controller.model.subWing=controller.sub_wingP;

                            controller.postPhysicalCharacteristics(controller.model);

                          }

                        }, child: Text('Post')):ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary_color
                        ),
                        onPressed: () {
                          controller.buttonVal.value = 1;
                          var id = controller.structureid.value;
                          log("iddd${id}");
                          int newId = int.parse(id);
                          print(newId);
                          print(newId.runtimeType);
                          print(controller.prepareData);
                          for (var span in bridgeController.spanData) {
                            log(span.toJson().toString());
                          }


                          if(_formKey.currentState?.validate()==true){
                            print("Success");

                            controller.model.inspStrno = controller.inspPhysical.value;
                            controller.model.invNo = newId;
                            controller.model.supWidth = controller.sup_widthP;
                            controller.model.supCarriWidth =controller.sup_carri_widthP;
                            controller.model.supSidewalkLs = controller.sup_sidewalk_lsP;
                            controller.model.supSidewalkRs = controller.sup_sidewalk_rsP;
                            controller.model.supBankDistance = controller.sup_bank_distanceP;
                            controller.model.supLightPostsL = controller.sup_light_posts_lP;
                            controller.model.supLightPostsR = controller.sup_light_posts_rP;
                            controller.model.supElectrictySur = controller.sup_electricty_surP;
                            controller.model.supWearingCourse = controller.sup_wearing_courseP;
                            controller.model.supRailingTypes = controller.sup_railing_typesP;

                            controller.model.supTieHanger = controller.sup_tie_hangerP;
                            controller.model.supBracing = controller.sup_bracingP;
                            controller.model.subAbutment = controller.sub_abutment_endP;
                            controller.model.rbmPhyCharspanModels = bridgeController.spanData;
                            controller.model.subElementDetailsModels=controller.subElementList.value;
                            controller.model.subIntermediate=controller.sub_intermediateP;
                            controller.model.subWing=controller.sub_wingP;

                            controller.putPhysicalCharacteristics(controller.model,controller.inspPhysical.value);

                          }





                        }, child: Text('Update')),
                  ),





                  SizedBox(
                    height: 30,
                  ),

                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget wearingCourse() =>
      Column(
        children: controller.wearingCourseList.map((listItemval) {
          return RadioListTile<String>(
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1),
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: listItemval.text!,
            groupValue: controller.wearingVal.value,
            title: Text(
              listItemval.text!,
              style: TextStyle(),
              maxLines: 3,
            ),
            onChanged: (value) {
              controller.wearingVal.value = value!;
              print(controller.wearingVal.value);
              controller.sup_wearing_courseP = value;
            },
            activeColor: Get.theme.primaryColor,
          );
        }).toList(),
      );

  Widget typesOfRailing() =>
      Column(
        children: controller.typesOfRailingList.map((listItemval) {
          return RadioListTile<String>(
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1),
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: listItemval.text!,
            groupValue: controller.TypesOfRailingVal.value,
            title: Text(
              listItemval.text!,
              style: TextStyle(),
              maxLines: 3,
            ),
            onChanged: (value) {
              controller.TypesOfRailingVal.value = value!;
              print(controller.TypesOfRailingVal.value);
              controller.sup_railing_typesP = value;
            },
            activeColor: Get.theme.primaryColor,
          );
        }).toList(),
      );

  Widget sourceOfElectricty() =>
      Column(
        children: controller.electricitySourceList.map((listItemval) {
          return RadioListTile<String>(
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1),
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: listItemval.text!,
            groupValue: controller.electricitySourceVal.value,
            title: Text(
              listItemval.text!,
              style: TextStyle(),
              maxLines: 3,
            ),
            onChanged: (value) {
              controller.electricitySourceVal.value = value!;
              print(controller.electricitySourceVal.value);
              controller.sup_electricty_surP = value;
            },
            activeColor: Get.theme.primaryColor,
          );
        }).toList(),
      );

  Widget tieHanger() =>
      Column(
        children: controller.tieHangerList.map((listItemval) {
          return RadioListTile<String>(
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1),
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: listItemval.text!,
            groupValue: controller.TieandhangerVal.value,
            title: Text(
              listItemval.text!,
              style: TextStyle(),
              maxLines: 3,
            ),
            onChanged: (value) {
              controller.TieandhangerVal.value = value!;
              print(controller.TieandhangerVal.value);
              controller.sup_tie_hangerP = value;
            },
            activeColor: Get.theme.primaryColor,
          );
        }).toList(),
      );

//
  Widget bracing() =>
      Column(
        children: controller.bracingList.map((listItemval) {
          return RadioListTile<String>(
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1),
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: listItemval.text!,
            groupValue: controller.bracingVal.value,
            title: Text(
              listItemval.text!,
              style: TextStyle(),
              maxLines: 3,
            ),
            onChanged: (value) {
              controller.bracingVal.value = value!;
              print(controller.bracingVal.value);
              controller.sup_bracingP = value;
            },
            activeColor: Get.theme.primaryColor,
          );
        }).toList(),
      );

//SubStructure
  Widget SubStructureAbutmentEndWall() =>
      Column(
        children: controller.abutmentEndWallList.map((listItemval) {
          return RadioListTile<String>(
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1),
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: listItemval.text!,
            groupValue: controller.abutmentEndWallVal.value,
            title: Text(
              listItemval.text!,
              style: TextStyle(),
              maxLines: 3,
            ),
            onChanged: (value) {
              controller.abutmentEndWallVal.value = value!;
              print(controller.abutmentEndWallVal.value);
              controller.sub_abutment_endP = value;
            },
            activeColor: Get.theme.primaryColor,
          );
        }).toList(),
      );

  Widget SubStructureWingWall() =>
      Column(
        children: controller.subStructureWingWallList.map((listItemval) {
          return RadioListTile<String>(
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1),
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: listItemval.text!,
            groupValue: controller.subStructureWingWallVal.value,
            title: Text(
              listItemval.text!,
              style: TextStyle(),
              maxLines: 3,
            ),
            onChanged: (value) {
              controller.subStructureWingWallVal.value = value!;
              print(controller.subStructureWingWallVal.value);
              controller.sub_wingP = value;

            },
            activeColor: Get.theme.primaryColor,
          );
        }).toList(),
      );

  Widget SubStructurePierIntermediateWall() =>
      Column(
        children: controller.SubStructurePierIntermediateWallList.map((
            listItemval) {
          return RadioListTile<String>(
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1),
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: listItemval.text!,
            groupValue: controller.SubStructurePierIntermediateWallval.value,
            title: Text(
              listItemval.text!,
              style: TextStyle(),
              maxLines: 3,
            ),
            onChanged: (value) {
              controller.SubStructurePierIntermediateWallval.value = value!;
              print(controller.SubStructurePierIntermediateWallval.value);
              controller.sub_intermediateP = value;
            },
            activeColor: Get.theme.primaryColor,
          );
        }).toList(),
      );


//Foundation
  Widget FoundationAbutment() =>
      Column(
        children: controller.FoundationAbutmentList.map((listItemval) {
          return RadioListTile<String>(
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1),
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: listItemval.text!,
            groupValue: controller.FoundationAbutmentVal.value,
            title: Text(
              listItemval.text!,
              style: TextStyle(),
              maxLines: 3,
            ),
            onChanged: (value) {
              controller.FoundationAbutmentVal.value = value!;
              print(controller.FoundationAbutmentVal.value);

            },
            activeColor: Get.theme.primaryColor,
          );
        }).toList(),
      );

  Widget FoundationWingWall() =>
      Column(
        children: controller.FoundationWingWallList.map((listItemval) {
          return RadioListTile<String>(
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1),
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: listItemval.text!,
            groupValue: controller.FoundationWingWallVal.value,
            title: Text(
              listItemval.text!,
              style: TextStyle(),
              maxLines: 3,
            ),
            onChanged: (value) {
              controller.FoundationWingWallVal.value = value!;
              print(controller.FoundationWingWallVal.value);

            },
            activeColor: Get.theme.primaryColor,
          );
        }).toList(),
      );

  //Pier
  Widget FoundationPier() =>
      Column(
        children: controller.FoundationPierList.map((listItemval) {
          return RadioListTile<String>(
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1),
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            value: listItemval.text!,
            groupValue: controller.FoundationPierVal.value,
            title: Text(
              listItemval.text!,
              style: TextStyle(),
              maxLines: 3,
            ),
            onChanged: (value) {
              controller.FoundationPierVal.value = value!;
              print(controller.FoundationPierVal.value);
            },
            activeColor: Get.theme.primaryColor,
          );
        }).toList(),
      );

  Widget spanSection() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: bridgeController.spanData.length,
      itemBuilder: (_, index) {
        return ExpansionTile(
          title: Text("Span Serial: ${bridgeController.spanData[index].spanName}"),
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12, width: 1),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("Span Serial: "),
                      Text(bridgeController.spanData[index].spanName),
                      const Text("Span Length: "),
                      Text(bridgeController.spanData[index].spanLength),
                    ],
                  ),
                  const SizedBox(height: 10),
                  componentSection(index),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          bridgeController.removeSpan(
                            bridgeController.spanData[index],
                          );
                        },
                        icon: const Icon(Icons.delete),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            bridgeController.addComponentDialog(index);
                          },
                          child: const Text("Add Component"),
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }


  Widget componentSection(int index) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: bridgeController.spanData[index].components.length,
        itemBuilder: (_, componentIndex) {
          log(componentIndex.toString());
          return ListTile(
            title: Text(
             bridgeController.elements![int.parse(bridgeController
                 .spanData[index].components[componentIndex].componentId) - 1].text!,
            ),
            subtitle: Text(
              bridgeController
                  .spanData[index].components[componentIndex].elementSerial,
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                bridgeController.removeComponent(
                  index,
                  bridgeController.spanData[index].components[componentIndex],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lged_inspection/app/modules/inventoryInspection/model/trafficandLoadPostModel.dart';
import '../../../utils/colors.dart';
import '../controllers/inventory_inspection_controller.dart';

class TrafficLoadingInfo extends StatelessWidget {
  const TrafficLoadingInfo({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final InventoryInspectionController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            //     "sl_no": 82,
            //         "inv_no": 16169,
            SizedBox(height: 20,),
            Text("Traffic And Loading Info",style: TextStyle(fontSize: 16),),
            SizedBox(height: 20,),
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
                      child: Text("sl_no:",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=> Expanded(
                      flex: 2,
                      child: Text("${controller.sl_noTraffic.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
            ),
            SizedBox(height: 5,),
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
                      child: Text("inv_no:",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=> Expanded(
                      flex: 2,
                      child: Text("${controller.inv_noTraffic.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
            ),
            SizedBox(height: 5,),
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
                      child: Text("Average Width:",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=> Expanded(
                      flex:2,
                      child: Text("${controller.tl_average_width.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
            ),
            SizedBox(height: 5,),
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
                      child: Text("Design load :",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=>Expanded(
                      flex:2,
                      child: Text("${controller.tl_design_load.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
            ),
            SizedBox(height: 5,),
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
                      child: Text("Max Posted Vehicle Load :",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=>Expanded(
                      flex:2,
                      child: Text("${controller.tl_posted_vehicle.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
            ),
            SizedBox(height: 5,),
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
                      child: Text("Max Accessed Vehicle Load :",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=> Expanded(
                      flex: 2,
                      child: Text("${controller.tl_assessed_vehicle.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                  if (controller.TrafficAndLoad.value == true) {
                    controller.TrafficAndLoad.value = false;
                  } else {
                    controller.TrafficAndLoad.value = true;
                  }
                },
                child: Text('Update')),

            Obx(()=> controller.TrafficAndLoad .value==true?trafficAndLoadDetails(controller: controller):Container())

          ],
        ),
      ),
    );
  }
}

class trafficAndLoadDetails extends StatelessWidget {
  const trafficAndLoadDetails({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final InventoryInspectionController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4,),
          Text("Traffic And Loading Info",style: TextStyle(fontSize: 16),),
          SizedBox(height: 4,),
          Text("Average Width ",style: TextStyle(fontSize: 12),),
          SizedBox(height: 6,),
          TextFormField(
            onChanged: (value){
              controller.tlAverageWidth=double.parse(value);
            },
            decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(6,14,14,0),
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
            child: Text("Design load",style: TextStyle(fontSize: 12),),
          ),
          TextFormField(
            onChanged: (v){
                  controller.tlDesignLoad=double.parse(v);
            },
            decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(6,14,14,0),
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
          //Flow Type
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text("Max Posted Vehicle Load",style: TextStyle(fontSize: 12),),
          ),
          TextFormField(

            onChanged: (v){
                controller.tlPostedVehicle =double.parse(v);
            },
            decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(6,14,14,0),
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
            child: Text("Max Accessed Vehicle Load",style: TextStyle(fontSize: 12),),
          ),

          TextFormField(

            onChanged: (value){
              controller.tlAssessedVehicle =double.parse(value);
            },
            decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(6,14,14,0),
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


          Center(
            child: controller.sl_noTraffic.value==0?ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary_color
                ),
                onPressed: (){
                  controller.inv_noTrafficP =int.parse(controller.structureid.value);
                  controller.sl_noTrafficP =controller.sl_noTraffic.value;
                  var model =TrafficandLoadPostModel(
                    tlAssessedVehicle: controller.tlAssessedVehicle,tlAverageWidth: controller.tlAverageWidth,
                    tlDesignLoad: controller.tlDesignLoad,tlPostedVehicle: controller.tlPostedVehicle,
                      slNo: controller.sl_noTraffic.value,invNo: controller.inv_noTrafficP
                    // slNo: controller.sl_noTrafficP,

                    // invNo: controller.inv_noTrafficP,

                  );


                  //  double tlAverageWidth=0.0;
                  //   double tlDesignLoad=0.0;
                  //   double tlPostedVehicle=0.0;
                  //   double tlAssessedVehicle=0.0;

                  // crChannelType: int.parse(controller.channelType.text),
                  //,
                  //crFlowType: double.parse(controller.flowType.text),
                  //,
                  //
                  // crGeographic: double.parse(controller.geographic.text),

                  controller.postTrafficandLoad(model);
                  //controller.postTrafficandLoad(model);
                }, child: Text('Update')):ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary_color
                ),
                onPressed: (){
                  controller.inv_noTrafficP =int.parse(controller.structureid.value);
                  controller.sl_noTrafficP =controller.sl_noTraffic.value;
                  var model =TrafficandLoadPostModel(
                      tlAssessedVehicle: controller.tlAssessedVehicle,tlAverageWidth: controller.tlAverageWidth,
                      tlDesignLoad: controller.tlDesignLoad,tlPostedVehicle: controller.tlPostedVehicle,
                      slNo: controller.sl_noTraffic.value,invNo: controller.inv_noTrafficP
                    // slNo: controller.sl_noTrafficP,

                    // invNo: controller.inv_noTrafficP,

                  );


                  //  double tlAverageWidth=0.0;
                  //   double tlDesignLoad=0.0;
                  //   double tlPostedVehicle=0.0;
                  //   double tlAssessedVehicle=0.0;

                  // crChannelType: int.parse(controller.channelType.text),
                  //,
                  //crFlowType: double.parse(controller.flowType.text),
                  //,
                  //
                  // crGeographic: double.parse(controller.geographic.text),

                  controller.putTrafficandLoad(model, controller.sl_noTraffic.value);
                  //controller.postTrafficandLoad(model);
                }, child: Text('Update')),
          ),
          SizedBox(
            height: 230,
          ),
        ],
      ),
    );
  }
}
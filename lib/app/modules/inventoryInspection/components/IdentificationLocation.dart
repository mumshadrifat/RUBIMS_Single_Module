import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../controllers/inventory_inspection_controller.dart';
import '../model/identificationLocationPostModel.dart';
import '../model/identificationLocationResponse.dart';

class IdentificationLocation extends StatelessWidget {
  const IdentificationLocation({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final InventoryInspectionController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Identification & Location",style: TextStyle(fontSize: 16),),
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
                      flex: 2,
                      child: Text("identi_no :",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
            Obx(()=>     Expanded(
                flex: 2,
                child: Text("${controller.identi_noIdentificationP.value}",style: TextStyle(fontSize: 12),)))
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
                      child: Text("inv_no :",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=>Expanded(
                      flex:2,
                      child: Text("${controller.inv_noIdentification.value}",style: TextStyle(fontSize: 12),)),)
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
                      child: Text("Chainage (m) :",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=> Expanded(
                      flex: 2,
                      child: Text("${controller.chainage.value}",style: TextStyle(fontSize: 12),)),)
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
                      child: Text("Altitude :",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=>Expanded(
                      flex: 2,
                      child: Text("${controller.altitude.value}",style: TextStyle(fontSize: 12),)),)
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
                      child: Text("Latitude :",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=>Expanded(
                      flex: 2,
                      child: Text("${controller.latitude.value}",style: TextStyle(fontSize: 12),)),)
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
                      child: Text("Longitude :",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=> Expanded(
                      flex: 2,
                      child: Text("${controller.longitude.value}",style: TextStyle(fontSize: 12),)),)
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
                      child: Text("Feature Intersected :",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=> Expanded(
                      flex: 2,
                      child: Text("${controller.feature_intersected.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                  if (controller.identificationButtonVal.value == true) {
                    controller.identificationButtonVal.value = false;
                  } else {
                    controller.identificationButtonVal.value = true;
                  }

                },
                child: Text('Update')),

            Obx(()=> controller.identificationButtonVal .value==true?IdentificationLocationUpdate(controller: controller):Container())

          ],
        ),
      ),
    );
  }
}









class IdentificationLocationUpdate extends StatelessWidget {
  const IdentificationLocationUpdate({
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
          Text("Identification & Location",style: TextStyle(fontSize: 16),),
          SizedBox(height: 4,),
          Text("Chainage (m) ",style: TextStyle(fontSize: 12),),
          SizedBox(height: 6,),
          TextFormField(
            onChanged: (value){
                  controller.chainageP=value;
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
            child: Text("Altitude",style: TextStyle(fontSize: 12),),
          ),
          TextFormField(
            onChanged: (v){
              controller.altitudeP=v;
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
            child: Text("Latitude",style: TextStyle(fontSize: 12),),
          ),
          TextFormField(

            onChanged: (v){
              controller.latitudeP =v;
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
            child: Text("Longitude",style: TextStyle(fontSize: 12),),
          ),

          TextFormField(

            onChanged: (value){
              controller.longitudeP=value;
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
            child: Text("Feature Intersected",style: TextStyle(fontSize: 12),),
          ),
          Obx(
                () => Container(
              child: DropdownButtonFormField(
                isExpanded: true,
                decoration: InputDecoration(border: InputBorder.none),

                //value:controller.facilitiesCarriedList.isNotEmpty?controller.facilitiesCarriedList[0] : null,
                hint: Text(
                  'Select Your Feature Intersected',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.primary_color,
                  ),
                ),

                items: controller.facilitiesCarriedList.map((FacilitiesCarried category) {
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
                  controller.featureIntersectedP=newValue as int;
                },
              ),
            ),
          ),
          Center(
            child: controller.identi_noIdentificationP.value==0?ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary_color
                ),
                onPressed: (){

                  controller.inv_noIdentificationP =int.parse(controller.structureid.value);
                  var model =IdentificationAndLocationPost(
                    altitude: controller.altitudeP,chainage: controller.chainageP,
                     featureIntersected: controller.featureIntersectedP,latitude: controller.latitudeP,
                     longitude: controller.longitudeP,
                      invNo: controller.inv_noIdentificationP,
                     identiNo: controller.identi_noIdentificationP.value,


                  );




                  // crChannelType: int.parse(controller.channelType.text),
                  //,
                  //crFlowType: double.parse(controller.flowType.text),
                  //,
                  //
                  // crGeographic: double.parse(controller.geographic.text),

                  controller.postIdentifyLocationData(model);
                 // controller.postIdentifyLocationData(model);
                }, child: Text('Update')):ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary_color
                ),
                onPressed: (){

                  controller.inv_noIdentificationP =int.parse(controller.structureid.value);
                  var model =IdentificationAndLocationPost(
                    altitude: controller.altitudeP,chainage: controller.chainageP,
                    featureIntersected: controller.featureIntersectedP,latitude: controller.latitudeP,
                    longitude: controller.longitudeP,
                    invNo: controller.inv_noIdentificationP,
                    identiNo: controller.identi_noIdentificationP.value,


                  );




                  // crChannelType: int.parse(controller.channelType.text),
                  //,
                  //crFlowType: double.parse(controller.flowType.text),
                  //,
                  //
                  // crGeographic: double.parse(controller.geographic.text),

                  controller.putIdentifyLocationData(model,controller.identi_noIdentificationP.value);
                  // controller.postIdentifyLocationData(model);
                }, child: Text('Update')),
          ),
          SizedBox(
            height: 230,
          )
        ],
      ),
    );
  }
}
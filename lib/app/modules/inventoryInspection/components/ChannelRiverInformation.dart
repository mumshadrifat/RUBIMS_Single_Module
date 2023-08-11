import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../controllers/inventory_inspection_controller.dart';
import '../model/getChannelRiver_response.dart';
import '../model/ChannelAndRiverPostModel.dart';
class ChannelRiverInformation extends StatelessWidget {
  const ChannelRiverInformation({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final InventoryInspectionController controller;

  @override
  Widget build(BuildContext context) {

    print("sl_noChannelRiver${controller.sl_noChannelRiver}");
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Channel/River Information",style: TextStyle(fontSize: 16),),
            SizedBox(height: 10,),
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
                      flex:2,
                      child: Text("${controller.sl_noChannelRiver.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
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
                      flex: 2,
                      child: Text("inv_no:",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=>Expanded(
                      flex: 2,
                      child: Text("${controller.inv_noChannelRiver.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
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
                      flex: 2,
                      child: Text("Channel/River Name:",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                 Obx(()=> Expanded(
                     flex: 2,
                     child: Text("${controller.cr_Name.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
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
                      flex: 2,
                      child: Text("Channel/River Protection:",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=>Expanded(
                      flex: 2,
                      child: Text("${controller.cr_Protection.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
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
                      flex: 2,
                      child: Text("Flow Type:",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=>Expanded(
                      flex: 2,
                      child: Text("${controller.cr_FlowType.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
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
                      flex: 2,
                      child: Text("Channel/River Width (m):",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                 Obx(()=> Expanded(
                     flex: 2,
                     child: Text("${controller.cr_width.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
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
                      child: Text("Channel Type:",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                 Obx(()=> Expanded(
                     flex: 2,
                     child: Text("${controller.cr_ChannelType.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
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
                      child: Text("Flood Level (Average):",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                  Obx(()=>Expanded(
                      flex: 2,
                      child: Text("${controller.cr_FloodLevel.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
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
                      flex: 2,
                      child: Text("Salinity:",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
              Obx(()=> Expanded(
                  flex: 2,
                  child: Text("${controller.cr_Salinity.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
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
                      child: Text("Geographic:",style: TextStyle(fontSize: 12),)),
                  SizedBox(width: 8,),
                 Obx(()=> Expanded(
                     flex: 2,
                     child: Text("${controller.cr_Gepgraphic.value}",style: TextStyle(fontSize: 12),)),)
                ],
              ),
            ),
         ElevatedButton(onPressed: (){

        if( controller.press.value==true){
          controller.press.value=false;
        }else{
          controller.press.value=true;
        }
    }, child: Text('Update')),
            // controller.ChannelRiverInformation.length==null?ElevatedButton(onPressed: (){}, child: Text("Post")):ElevatedButton(onPressed: (){
            //   channelRiverUpdate();
            // }, child: Text("Update"))
            // controller.press.value==false?Container():
           Obx(()=> controller.press.value==true?channelRiverInfo(controller: controller,):Container())

          ],
        ),
      ),
    );
      //channelRiverUpdate();
  }


}







































class channelRiverInfo extends StatelessWidget {
   channelRiverInfo({
    Key? key,
     required this.controller,
  }) : super(key: key);
final InventoryInspectionController controller;
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4,),
                Text("Channel/River Information",style: TextStyle(fontSize: 16),),
                SizedBox(height: 4,),
                Text("Channel/River Name",style: TextStyle(fontSize: 12),),
                SizedBox(height: 6,),
                TextFormField(
                  onChanged: (value){
                    controller.cr_nameP=value;
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
                  child: Text("Channel/River Protection",style: TextStyle(fontSize: 12),),
                ),

                //Channel/River Protection
                Obx(() => DropdownButtonFormField(
                  isExpanded: true,
                  decoration: InputDecoration(border: InputBorder.none),
                  // value: controller.inventoryElementList.length != 0
                  //     ? controller.inventoryElementList[0]
                  //     : null,
                  //value:controller.inventoryElementList.isNotEmpty?controller.inventoryElementList[0] : null,
                  hint: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      'Channel/River Protection',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primary_color,
                      ),
                    ),
                  ),

                  items: controller.channelProtectionList
                      .map((ChannelProtection category) {
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
                    controller.cr_protectionP=int.parse(newValue.toString());
                    print(controller.cr_protectionP);

                  },
                ),
                ),



                // TextFormField(
                //   onChanged: (v){
                //     controller.cr_protectionP=int.parse(v);
                //   },
                //   decoration: InputDecoration(
                //       isDense: true,
                //       contentPadding: EdgeInsets.fromLTRB(6,14,14,0),
                //       border: OutlineInputBorder(
                //         borderRadius: const BorderRadius.all(
                //           Radius.circular(8.0),
                //         ),
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8.0),
                //         borderSide: BorderSide(
                //           color: AppColors.primary_color,
                //         ),
                //       ),
                //
                //       focusColor: AppColors.primary_color,
                //       filled: true,
                //       fillColor: Colors.white),
                // ),
                //Flow Type
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 6),
                //   child: Text("Flow Type",style: TextStyle(fontSize: 12),),
                // ),
                // TextFormField(
                //
                //   onChanged: (v){
                //     controller.cr_flowTypeP=int.parse(v);
                //   },
                //   decoration: InputDecoration(
                //       isDense: true,
                //       contentPadding: EdgeInsets.fromLTRB(6,14,14,0),
                //       border: OutlineInputBorder(
                //         borderRadius: const BorderRadius.all(
                //           Radius.circular(8.0),
                //         ),
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8.0),
                //         borderSide: BorderSide(
                //           color: AppColors.primary_color,
                //         ),
                //       ),
                //
                //       focusColor: AppColors.primary_color,
                //       filled: true,
                //       fillColor: Colors.white),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text("Channel/River Width (m)",style: TextStyle(fontSize: 12),),
                ),

                TextFormField(

                  onChanged: (value){
                    controller.cr_widthP=int.parse(value);
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
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 6),
                //   child: Text("CR Channel Type",style: TextStyle(fontSize: 12),),
                // ),
                // TextFormField(
                //
                //   onChanged: (v){
                //     controller.cr_ChannelTypeP=int.parse(v);
                //   },
                //
                //   decoration: InputDecoration(
                //       isDense: true,
                //       contentPadding: EdgeInsets.fromLTRB(6,14,14,0),
                //       border: OutlineInputBorder(
                //         borderRadius: const BorderRadius.all(
                //           Radius.circular(8.0),
                //         ),
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8.0),
                //         borderSide: BorderSide(
                //           color: AppColors.primary_color,
                //         ),
                //       ),
                //
                //       focusColor: AppColors.primary_color,
                //       filled: true,
                //       fillColor: Colors.white),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text("Flood Level (Average)",style: TextStyle(fontSize: 12),),
                ),
                TextFormField(
                 onChanged: (v){
                   controller.cr_floodLevelP=int.parse(v);
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
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 6),
                //   child: Text("Salinity",style: TextStyle(fontSize: 12),),
                // ),
                // TextFormField(
                //
                //   onChanged: (v){
                //     controller.cr_salinityP=int.parse(v);
                //   },
                //
                //   decoration: InputDecoration(
                //       isDense: true,
                //       contentPadding: EdgeInsets.fromLTRB(6,14,14,0),
                //       border: OutlineInputBorder(
                //         borderRadius: const BorderRadius.all(
                //           Radius.circular(8.0),
                //         ),
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8.0),
                //         borderSide: BorderSide(
                //           color: AppColors.primary_color,
                //         ),
                //       ),
                //
                //       focusColor: AppColors.primary_color,
                //       filled: true,
                //       fillColor: Colors.white),
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 6),
                //   child: Text("Geographic",style: TextStyle(fontSize: 12),),
                // ),
                // TextFormField(
                //   onChanged: (v){
                //     controller.cr_geographicP=int.parse(v);
                //   },
                //
                //   decoration: InputDecoration(
                //       isDense: true,
                //       contentPadding: EdgeInsets.fromLTRB(6,14,14,0),
                //       border: OutlineInputBorder(
                //         borderRadius: const BorderRadius.all(
                //           Radius.circular(8.0),
                //         ),
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8.0),
                //         borderSide: BorderSide(
                //           color: AppColors.primary_color,
                //         ),
                //       ),
                //
                //       focusColor: AppColors.primary_color,
                //       filled: true,
                //       fillColor: Colors.white),
                // ),





                //Channel Type
                Obx(() => DropdownButtonFormField(
                  isExpanded: true,
                  decoration: InputDecoration(border: InputBorder.none),
                  // value: controller.inventoryElementList.length != 0
                  //     ? controller.inventoryElementList[0]
                  //     : null,
                  //value:controller.inventoryElementList.isNotEmpty?controller.inventoryElementList[0] : null,
                  hint: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      'Channel Type',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primary_color,
                      ),
                    ),
                  ),

                  items: controller.channelTypeList
                      .map((ChannelType category) {
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
                    controller.cr_ChannelTypeP=int.parse(newValue.toString());
                    print(controller.cr_ChannelTypeP);

                  },
                ),
                ),

                //Salinity
                Obx(() => DropdownButtonFormField(
                  isExpanded: true,
                  decoration: InputDecoration(border: InputBorder.none),
                  // value: controller.inventoryElementList.length != 0
                  //     ? controller.inventoryElementList[0]
                  //     : null,
                  //value:controller.inventoryElementList.isNotEmpty?controller.inventoryElementList[0] : null,
                  hint: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      'Salinity',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primary_color,
                      ),
                    ),
                  ),

                  items: controller.salinityList
                      .map((Salinity category) {
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
                    controller.cr_salinityP=int.parse(newValue.toString());
                    print(controller.cr_salinityP);

                  },
                ),
                ),

                //Geographic
                Obx(() => DropdownButtonFormField(
                  isExpanded: true,
                  decoration: InputDecoration(border: InputBorder.none),
                  // value: controller.inventoryElementList.length != 0
                  //     ? controller.inventoryElementList[0]
                  //     : null,
                  //value:controller.inventoryElementList.isNotEmpty?controller.inventoryElementList[0] : null,
                  hint: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      'Geographic',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primary_color,
                      ),
                    ),
                  ),

                  items: controller.geographicList
                      .map((Geographic category) {
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
                    controller.cr_geographicP=int.parse(newValue.toString());
                    print(controller.cr_geographicP);

                  },
                ),
                ),
                //flowTypeP
                Obx(() => DropdownButtonFormField(
                  isExpanded: true,
                  decoration: InputDecoration(border: InputBorder.none),
                  // value: controller.inventoryElementList.length != 0
                  //     ? controller.inventoryElementList[0]
                  //     : null,
                  //value:controller.inventoryElementList.isNotEmpty?controller.inventoryElementList[0] : null,
                  hint: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      'FlowType',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primary_color,
                      ),
                    ),
                  ),

                  items: controller.flowTypeList
                      .map((FlowType category) {
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
                    controller.cr_flowTypeP=int.parse(newValue.toString());
                    print(controller.cr_flowTypeP);

                  },
                ),
                ),



                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
            // controller.putChannelRiver(model,controller.sl_noChannelRiver.value);
                    Center(
                      child: controller.sl_noChannelRiver.value==0?ElevatedButton(
                          style: ElevatedButton.styleFrom(
                               b backgroundColor: AppColors.primary_color
                          ),
                          onPressed: (){
                            controller.inv_noChannelRiverP=int.parse(controller.structureid.value);
                           // controller.sl_noChannelRiverP = int.parse(controller.sl_noChannelRiver.value);
                            print('controller.sl_noChannelRiver.value${controller.sl_noChannelRiver.value}');
                            var model =ChannelAndRiverPostModel(
                              crName: controller.cr_nameP,
                              crWidth: controller.cr_widthP,
                              crChannelType: controller.cr_ChannelTypeP,
                              crFloodLevel: controller.cr_floodLevelP,
                              crFlowType: controller.cr_flowTypeP,
                              crProtection: controller.cr_protectionP,
                              crSalinity: controller.cr_salinityP,
                              crGeographic: controller.cr_geographicP,
                              invNo: controller.inv_noChannelRiverP,
                              slNo: controller.sl_noChannelRiver.value,


                              // invNo: controller.inv_noChannelRiverP,slNo: controller.sl_noChannelRiverP
                            );

                            // crChannelType: int.parse(controller.channelType.text),
                            //,
                            //crFlowType: double.parse(controller.flowType.text),
                            //,
                            //
                            // crGeographic: double.parse(controller.geographic.text),


                            //controller.postChannelRiver(model);
                            controller.postChannelRiver(model);
                          }, child: Text('Update')):
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary_color
                          ),
                          onPressed: (){
                            controller.inv_noChannelRiverP=int.parse(controller.structureid.value);
                            // controller.sl_noChannelRiverP = int.parse(controller.sl_noChannelRiver.value);
                            print('controller.sl_noChannelRiver.value${controller.sl_noChannelRiver.value}');
                            var model =ChannelAndRiverPostModel(
                              crName: controller.cr_nameP,
                              crWidth: controller.cr_widthP,
                              crChannelType: controller.cr_ChannelTypeP,
                              crFloodLevel: controller.cr_floodLevelP,
                              crFlowType: controller.cr_flowTypeP,
                              crProtection: controller.cr_protectionP,
                              crSalinity: controller.cr_salinityP,
                              crGeographic: controller.cr_geographicP,
                              invNo: controller.inv_noChannelRiverP,
                              slNo: controller.sl_noChannelRiver.value,


                              // invNo: controller.inv_noChannelRiverP,slNo: controller.sl_noChannelRiverP
                            );

                            // crChannelType: int.parse(controller.channelType.text),
                            //,
                            //crFlowType: double.parse(controller.flowType.text),
                            //,
                            //
                            // crGeographic: double.parse(controller.geographic.text),


                            //controller.postChannelRiver(model);
                            controller.putChannelRiver(model,controller.sl_noChannelRiver.value);
                          }, child: Text('Update')),
                    ),
                  ],),
                SizedBox(
                  height: 400,
                )
              ],
            ),
          ),
        ),
      );

  }
}
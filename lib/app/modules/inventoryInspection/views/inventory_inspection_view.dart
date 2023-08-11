import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lged_inspection/app/common_widget/app_bar.dart';
import 'package:lged_inspection/app/modules/inventoryInspection/controllers/home_controller.dart';

import '../../../utils/colors.dart';
import '../components/ChannelRiverInformation.dart';
import '../components/IdentificationLocation.dart';
import '../components/PhysicalCharacteristics.dart';
import '../components/TrafficLoadingInfo.dart';
import '../controllers/inventory_inspection_controller.dart';
import '../model/getPhysicalInventoryResponse.dart';

class InventoryInspectionView extends GetView<InventoryInspectionController> {
  final HomeController bridgeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text("Struture Code: ${controller.structureid}",style:TextStyle(
              fontSize: 12
            )),
            Text("Inventory Inspection",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            //AnimatedButton tab
            Obx(
                () => AnimatedButtonBar(
                  radius: 20.0,
                  backgroundColor: Colors.grey.shade200,
                  foregroundColor: AppColors.primary_color,
                  // padding: EdgeInsets.all(5),
                  elevation: 4,
                  borderColor: Colors.white,

                  invertedSelection: true,
                  children: [
                    ButtonBarEntry(
                      onTap: () {
                        controller.selectTab.value = "Identification & Location";
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text('Identification & Location'.tr,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: controller.selectTab.value ==
                                  "Identification & Location"
                                  ? Colors.white
                                  : Colors.black,
                            )),
                      )
                    ),
                    ButtonBarEntry(
                      onTap: () {
                        //controller.getPhysicalInventory(controller.structureid.value);
                        controller.selectTab.value = "Physical Characteristics";

                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'Physical Characteristics'.tr,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: controller.selectTab.value ==
                                    "Physical Characteristics"
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    ButtonBarEntry(
                      onTap: () {
                        controller.selectTab.value = "Traffic & Loading Info";
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'Traffic & Loading Info'.tr,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: controller.selectTab.value ==
                                    "Traffic & Loading Info"
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    ButtonBarEntry(
                      onTap: () {
                        controller.selectTab.value = "Channel/River Information";
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          'Channel/River Information'.tr,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: controller.selectTab.value ==
                                    "Channel/River Information"
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
              height: 3,
            ),

              Obx(
                () => controller.selectTab.value == "Identification & Location"
                    ? IdentificationLocation(controller: controller)
                    : Container(),
              ),

              Obx(() => controller.selectTab.value == "Physical Characteristics"
                  ? PhysicalCharacteristics(controller: controller)
                  : Container()),

              Obx(
                () => controller.selectTab.value == "Traffic & Loading Info"
                    ? TrafficLoadingInfo(controller: controller)
                    : Container(),
              ),
              Obx(
                () => controller.selectTab.value == "Channel/River Information"
                    ? ChannelRiverInformation(controller: controller)
                    : Container(),
              ),
            ],
        ),
      )
    );


  }

}









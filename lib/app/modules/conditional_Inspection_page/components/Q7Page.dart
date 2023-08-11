import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:lged_inspection/app/modules/conditional_Inspection_page/components/subStracture.dart';
import 'package:lged_inspection/app/modules/conditional_Inspection_page/components/superStrauture.dart';

import 'package:lged_inspection/app/utils/dimens.dart';


import '../../../common_widget/button.dart';
import '../../../model/inspection_post_model.dart';
import '../../../utils/colors.dart';
import '../controllers/conditional_inspection_page_controller.dart';
import 'safetyBridgeStructural.dart';
import 'nonStructure.dart';

class Q7PageContainer extends StatelessWidget {
  Q7PageContainer({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ConditionalInspectionPageController controller;

  @override
  Widget build(BuildContext context) {
    controller.apiCallwithId();
    // controller.getElements(controller.structureId.value);
    // controller.getDefects(controller.structureId.value);
    return Container(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Stracture Code: ${controller.structureId.value}',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 3,
                ),
                //AnimatedButton tab
                Obx(
                  () => AnimatedButtonBar(
                    radius: 25.0,
                    backgroundColor: Colors.grey.shade200,
                    foregroundColor: AppColors.primary_color,
                    // padding: EdgeInsets.all(5),
                    elevation: 4,
                    borderColor: Colors.white,

                    invertedSelection: true,

                    children: [
                      ButtonBarEntry(

                        onTap: () {
                          controller.selectTab.value = "Super Structure";
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text('Super Stracture'.tr,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: controller.selectTab.value ==
                                        "Super Structure"
                                    ? Colors.white
                                    : Colors.black,
                              )),
                        ),
                      ),
                      ButtonBarEntry(
                        onTap: () {
                          controller.selectTab.value = "Sub Structure";
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            'Sub Structure'.tr,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: controller.selectTab.value == "Sub Structure"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      ButtonBarEntry(
                        onTap: () {
                          controller.selectTab.value = "Non Structure";
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            'Non Structure'.tr,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: controller.selectTab.value == "Non Structure"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),

                      ButtonBarEntry(
                        onTap: () {
                          controller.selectTab.value = "Safety";
                        },
                        child: Text(
                          'Safety'.tr,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: controller.selectTab.value == "Safety"
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),

                //Super Stractural
                Obx(
                      () => controller.selectTab.value == "Super Structure"
                      ? SuperStrauture(controller: controller)
                      : Container(),
                ),
                //Sub Stractural
                Obx(() => controller.selectTab.value == "Sub Structure"
                    ? SubStracture(controller: controller)
                    : Container()),

                //Non Structure
                Obx(
                  () => controller.selectTab.value == "Non Structure"
                      ? NonStructure(controller: controller)
                      : Container(),
                ),

                //Safety
                Obx(
                      () => controller.selectTab.value == "Safety"
                      ?  SafetyBridgeStructural(controller: controller)
                      : Container(),
                ),


                // GestureDetector(
                //   onTap: () {
                //
                //
                //
                //
                //     controller.pageController.nextPage(
                //         duration: Duration(seconds: 1), curve: Curves.linear);
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.all(6.0),
                //     child: CustomButton(
                //         radius: 30,
                //         text: "Next",
                //         width: 80,
                //         height: 40,
                //         textColour: Colors.white,
                //         fontWeight: FontWeight.bold,
                //         backgroundColour: AppColors.primary_color,
                //         textSize: Dimension.smallFont),
                //   ),
                // ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

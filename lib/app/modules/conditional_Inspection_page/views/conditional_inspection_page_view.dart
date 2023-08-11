import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lged_inspection/app/utils/colors.dart';
import 'package:lged_inspection/app/utils/dimens.dart';
import '../../../routes/app_pages.dart';
import '../components/safetyBridgeStructural.dart';
import '../components/Q7Page.dart';
import '../controllers/conditional_inspection_page_controller.dart';

class ConditionalInspectionPageView
    extends GetView<ConditionalInspectionPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leadingWidth: Dimension.width30 * 3,
            leading: InkWell(
              onTap: () {},
              child: Container(
                /* margin: EdgeInsets.only(
                                left: Dimension.width20 * 3,
                                right: Dimension.width20 + Dimension.width20 * 3,
                                bottom: Dimension.height20 * 2),*/
                height: Dimension.height20 * 5,
                width: Dimension.width30 * 8,
                //width: double.maxFinite,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/image/appBarLogo.png"),
                      fit: BoxFit.fitWidth),
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                ),
              ),
            ),
            actions: [
              Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  SizedBox(
                    width: Dimension.width10,
                  )
                ],
              ),
            ]),
        body: PageView(
          controller: controller.pageController,
          children: [
            Q7PageContainer(controller: controller),

            //conditional inspection
            //inventory inspection
          ],
        ));
  }
}

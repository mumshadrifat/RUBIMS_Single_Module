import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:lged_inspection/app/common_widget/text.dart';
import 'package:lged_inspection/app/utils/dimens.dart';
import '../../../common_widget/app_bar.dart';
import '../../../data/database_helper/databse_helper.dart';
import '../../../model/inspection_model_reuse.dart';
import '../../../utils/colors.dart';

import '../../local_data_preview/controllers/local_data_preview_controller.dart';
import '../components/ObservationOfIndividualComponentOfStructure.dart';
import '../components/SafetyBridgeStructural.dart';
import '../controllers/elements_details_page_controller.dart';


class ElementsDetailsPageView extends GetView<ElementsDetailsPageController> {


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(),
        body: PageView(
          controller: controller.pageController,
          children: [
            ObservationOfIndividualComponentOfStructure(controller: controller),
            SafetyBridgeStructural(controller: controller),

          ],
        ),
      ),
    );
  }
}





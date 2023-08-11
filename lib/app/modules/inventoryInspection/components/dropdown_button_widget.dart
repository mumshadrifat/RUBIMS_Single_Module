import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';


class MyDropDownButton extends StatelessWidget {
  MyDropDownButton({Key? key}) : super(key: key);
  final bridgeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return dropDownButton();
  }

  Container dropDownButton() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Obx(() {
        return DropdownButton<String>(
          // hint: const Text("Select A Component"),
          value: bridgeController.dropDownValue.value,
          isExpanded: true,
          elevation: 16,
          underline: Container(
            width: double.infinity,
            height: 2,
            color: Colors.green,
          ),
          items:
          bridgeController.elements?.map<DropdownMenuItem<String>>((element) {
            return DropdownMenuItem<String>(
              value: element.text,
              child: Text(element.text!),
            );
          }).toList(),
          onChanged: (value) {
            bridgeController.dropDownValue.value = value!;
          },
        );
      }),
    );
  }
}

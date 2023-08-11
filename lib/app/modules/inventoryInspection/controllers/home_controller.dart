import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lged_inspection/app/modules/inventoryInspection/model/GetPhysicalSelectionListResponse.dart';

import '../components/component_form_widget.dart';
import '../components/span_form_widget.dart';
import '../model/component_model.dart';
import '../model/span_model.dart';
import '../providers/_provider.dart';
import 'inventory_inspection_controller.dart';

class HomeController extends GetxController {
  RxList<SpanModel> spanData = <SpanModel>[].obs;

  final formKey = GlobalKey<FormState>();
  final TextEditingController spanSerialController = TextEditingController();
  final TextEditingController spanLengthController = TextEditingController();
  final TextEditingController componentSerialController =
      TextEditingController();
  RxDouble invForCompo = 43.0.obs;


  List<ElementList>? elements = [];
  var superElementList =<ElementList>[].obs;
  RxString dropDownValue = "".obs;

  @override
  void onInit() {
    super.onInit();
    InventortProvider().getPhysicalCharacteristics().then((value) {
      elements = value.result!.elementList;
    dropDownValue.value = elements!.first.text.toString();
    }
    );
    log(elements.toString());

  }

  bool validate() {
    bool validate = formKey.currentState!.validate();
    if (validate) formKey.currentState!.save();
    return validate;
  }

  updateComponent(int index) {
    spanData[index].components.add(
          ComponentModel(
            id: spanData[index].components.length,
            componentId: findIndex(dropDownValue.value).toString(),
            elementSerial: componentSerialController.text,
          ),
        );
    spanData.refresh();
  }

  addSpanDialog() {
    return Get.defaultDialog(
      title: "Add Span",
      textConfirm: "ADD",
      onConfirm: () {
        if (validate()) {
          log(spanData.length.toString());
          spanData.add(
            SpanModel(
              inv_No: invForCompo.value,
              id: spanData.length,
              spanName: spanSerialController.text,
              spanLength: spanLengthController.text,
              components: [],
            ),
          );
          Get.back();
        }
      },
      buttonColor: Colors.green,
      confirmTextColor: Colors.white,
      textCancel: "CANCEL",
      cancelTextColor: Colors.red,
      content: const SpanFormWidget(),
    );
  }

  addComponentDialog(int index) {
    return Get.defaultDialog(
      title: "Add Component",
      textConfirm: "ADD",
      onConfirm: () {
        if (validate()) {
          updateComponent(index);
          Get.back();
        }
      },
      buttonColor: Colors.green,
      confirmTextColor: Colors.white,
      textCancel: "CANCEL",
      cancelTextColor: Colors.red,
      content: const ComponentFormWidget(),
    );
  }

  void removeSpan(SpanModel spanModel) {
    int spanIndex = spanData.indexWhere((span) => span.id == spanModel.id);
    spanData.removeAt(spanIndex);
  }

  void removeComponent(int index, ComponentModel componentModel) {
    log(index.toString());
    log(componentModel.id.toString());
    int componentIndex = spanData[index]
        .components
        .indexWhere((component) => componentModel.id == component.id);
    spanData[index].components.removeAt(componentIndex);
    spanData.refresh();
  }

  int findIndex(String value){
    log("Value Of Component $value");
    return elements!.indexWhere((element) => element.text == value)+ 1;
  }
}

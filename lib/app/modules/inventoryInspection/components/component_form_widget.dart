import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'dropdown_button_widget.dart';

class ComponentFormWidget extends StatefulWidget {
  const ComponentFormWidget({Key? key}) : super(key: key);

  @override
  State<ComponentFormWidget> createState() => _ComponentFormWidgetState();
}

class _ComponentFormWidgetState extends State<ComponentFormWidget> {
  final bridgeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return componentMainSection();
  }

  Form componentMainSection() {
    return Form(
      key: bridgeController.formKey,
      child: Column(
        children: [
          MyDropDownButton(),
          componentSerialTextForm(),
        ],
      ),
    );
  }

  Widget componentSerialTextForm() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Component Serial",
        ),
        validator: (value) => value!.isNotEmpty ? null : "Enter Valid Serial",
        onSaved: (value) =>
            bridgeController.componentSerialController.text = value!,
      ),
    );
  }
}

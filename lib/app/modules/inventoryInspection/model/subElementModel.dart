import 'package:flutter/material.dart';


class SubElementModel{

  final double? sub_element_id ;
  final int? sub_element_serial ;
  final int? Str_Id ;


  SubElementModel({required this.sub_element_id, required this.sub_element_serial, required this.Str_Id});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['Str_Id'] = this.Str_Id;
    data['sub_element_serial'] = this.sub_element_serial;
    data['sub_element_id'] = this.sub_element_id;

    return data;
  }
}
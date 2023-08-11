import 'component_model.dart';

class SpanModel {

  double inv_No;
  int id;
  String spanName;
  String spanLength;
  List<ComponentModel> components;

  SpanModel({

    required this.inv_No,
    required this.id,
    required this.spanName,
    required this.spanLength,
    required this.components,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['span_name'] = spanName;
    data['inv_No'] = inv_No;
    data['span_length'] = spanLength;
    data['Components'] = components.map((v) => v.toJson()).toList();
    return data;
  }
}

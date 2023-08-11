class GetSubElementDetailsModels {
  int? strId;
  int? subElementSerial;
  double? subElementId;

  GetSubElementDetailsModels(
      {this.strId, this.subElementSerial, this.subElementId});

  GetSubElementDetailsModels.fromJson(Map<String, dynamic> json) {
    strId = json['Str_Id'];
    subElementSerial = json['sub_element_serial'];
    subElementId = json['sub_element_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Str_Id'] = this.strId;
    data['sub_element_serial'] = this.subElementSerial;
    data['sub_element_id'] = this.subElementId;
    return data;
  }
}
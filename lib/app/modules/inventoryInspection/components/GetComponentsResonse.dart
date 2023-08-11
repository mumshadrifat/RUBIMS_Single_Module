class GetComponents {
  double? componentId;
  int? elementSerial;
  String? elementName;

  GetComponents({this.componentId, this.elementSerial, this.elementName});

  GetComponents.fromJson(Map<String, dynamic> json) {
    componentId = json['Component_Id'];
    elementSerial = json['Element_Serial'];
    elementName = json['Element_Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Component_Id'] = this.componentId;
    data['Element_Serial'] = this.elementSerial;
    data['Element_Name'] = this.elementName;
    return data;
  }
}
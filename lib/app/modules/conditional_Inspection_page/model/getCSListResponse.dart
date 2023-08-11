class GetCSList {
  int? total;
  Null? result;
  List<CSListData>? cSList;
  Null? structureInventoryData;
  Null? yesNoList;
  Null? defects;
  Null? structures;
  Null? elementList;
  bool? isError;
  Null? message;

  GetCSList(
      {this.total,
        this.result,
        this.cSList,
        this.structureInventoryData,
        this.yesNoList,
        this.defects,
        this.structures,
        this.elementList,
        this.isError,
        this.message});

  GetCSList.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    result = json['Result'];
    if (json['CSList'] != null) {
      cSList = <CSListData>[];
      json['CSList'].forEach((v) {
        cSList!.add(new CSListData.fromJson(v));
      });
    }
    structureInventoryData = json['StructureInventoryData'];
    yesNoList = json['YesNoList'];
    defects = json['Defects'];
    structures = json['Structures'];
    elementList = json['ElementList'];
    isError = json['IsError'];
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Total'] = this.total;
    data['Result'] = this.result;
    if (this.cSList != null) {
      data['CSList'] = this.cSList!.map((v) => v.toJson()).toList();
    }
    data['StructureInventoryData'] = this.structureInventoryData;
    data['YesNoList'] = this.yesNoList;
    data['Defects'] = this.defects;
    data['Structures'] = this.structures;
    data['ElementList'] = this.elementList;
    data['IsError'] = this.isError;
    data['Message'] = this.message;
    return data;
  }
}

class CSListData {
  String? value;
  String? text;

  CSListData({this.value, this.text});

  CSListData.fromJson(Map<String, dynamic> json) {
    value = json['Value'];
    text = json['Text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Value'] = this.value;
    data['Text'] = this.text;
    return data;
  }
}

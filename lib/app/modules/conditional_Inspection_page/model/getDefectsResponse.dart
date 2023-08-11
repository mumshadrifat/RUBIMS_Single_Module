class GetDefects {
  int? total;
  Null? result;
  Null? cSList;
  Null? structureInventoryData;
  Null? yesNoList;
  Defects? defects;
  Null? structures;
  Null? elementList;
  bool? isError;
  Null? message;

  GetDefects(
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

  GetDefects.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    result = json['Result'];
    cSList = json['CSList'];
    structureInventoryData = json['StructureInventoryData'];
    yesNoList = json['YesNoList'];
    defects =
    json['Defects'] != null ? new Defects.fromJson(json['Defects']) : null;
    structures = json['Structures'];
    elementList = json['ElementList'];
    isError = json['IsError'];
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Total'] = this.total;
    data['Result'] = this.result;
    data['CSList'] = this.cSList;
    data['StructureInventoryData'] = this.structureInventoryData;
    data['YesNoList'] = this.yesNoList;
    if (this.defects != null) {
      data['Defects'] = this.defects!.toJson();
    }
    data['Structures'] = this.structures;
    data['ElementList'] = this.elementList;
    data['IsError'] = this.isError;
    data['Message'] = this.message;
    return data;
  }
}

class Defects {
  Null? nAME;
  Null? iD;
  Null? tYPE;
  Null? tYPEID;
  List<SuperListDefects>? superList;
  List<SubListDefects>? subList;
  List<NonListDefects>? nonList;

  Defects(
      {this.nAME,
        this.iD,
        this.tYPE,
        this.tYPEID,
        this.superList,
        this.subList,
        this.nonList});

  Defects.fromJson(Map<String, dynamic> json) {
    nAME = json['NAME'];
    iD = json['ID'];
    tYPE = json['TYPE'];
    tYPEID = json['TYPEID'];
    if (json['superList'] != null) {
      superList = <SuperListDefects>[];
      json['superList'].forEach((v) {
        superList!.add(new SuperListDefects.fromJson(v));
      });
    }
    if (json['subList'] != null) {
      subList = <SubListDefects>[];
      json['subList'].forEach((v) {
        subList!.add(new SubListDefects.fromJson(v));
      });
    }
    if (json['nonList'] != null) {
      nonList = <NonListDefects>[];
      json['nonList'].forEach((v) {
        nonList!.add(new NonListDefects.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NAME'] = this.nAME;
    data['ID'] = this.iD;
    data['TYPE'] = this.tYPE;
    data['TYPEID'] = this.tYPEID;
    if (this.superList != null) {
      data['superList'] = this.superList!.map((v) => v.toJson()).toList();
    }
    if (this.subList != null) {
      data['subList'] = this.subList!.map((v) => v.toJson()).toList();
    }
    if (this.nonList != null) {
      data['nonList'] = this.nonList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SuperListDefects {
  String? nAME;
  String? iD;
  String? tYPE;
  String? tYPEID;
  Null? superList;
  Null? subList;
  Null? nonList;

  SuperListDefects(
      {this.nAME,
        this.iD,
        this.tYPE,
        this.tYPEID,
        this.superList,
        this.subList,
        this.nonList});

  SuperListDefects.fromJson(Map<String, dynamic> json) {
    nAME = json['NAME'];
    iD = json['ID'];
    tYPE = json['TYPE'];
    tYPEID = json['TYPEID'];
    superList = json['superList'];
    subList = json['subList'];
    nonList = json['nonList'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NAME'] = this.nAME;
    data['ID'] = this.iD;
    data['TYPE'] = this.tYPE;
    data['TYPEID'] = this.tYPEID;
    data['superList'] = this.superList;
    data['subList'] = this.subList;
    data['nonList'] = this.nonList;
    return data;
  }
}
class SubListDefects {
  String? nAME;
  String? iD;
  String? tYPE;
  String? tYPEID;
  Null? superList;
  Null? subList;
  Null? nonList;

  SubListDefects(
      {this.nAME,
        this.iD,
        this.tYPE,
        this.tYPEID,
        this.superList,
        this.subList,
        this.nonList});

  SubListDefects.fromJson(Map<String, dynamic> json) {
    nAME = json['NAME'];
    iD = json['ID'];
    tYPE = json['TYPE'];
    tYPEID = json['TYPEID'];
    superList = json['superList'];
    subList = json['subList'];
    nonList = json['nonList'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NAME'] = this.nAME;
    data['ID'] = this.iD;
    data['TYPE'] = this.tYPE;
    data['TYPEID'] = this.tYPEID;
    data['superList'] = this.superList;
    data['subList'] = this.subList;
    data['nonList'] = this.nonList;
    return data;
  }
}
class NonListDefects {
  String? nAME;
  String? iD;
  String? tYPE;
  String? tYPEID;
  Null? superList;
  Null? subList;
  Null? nonList;

  NonListDefects(
      {this.nAME,
        this.iD,
        this.tYPE,
        this.tYPEID,
        this.superList,
        this.subList,
        this.nonList});

  NonListDefects.fromJson(Map<String, dynamic> json) {
    nAME = json['NAME'];
    iD = json['ID'];
    tYPE = json['TYPE'];
    tYPEID = json['TYPEID'];
    superList = json['superList'];
    subList = json['subList'];
    nonList = json['nonList'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NAME'] = this.nAME;
    data['ID'] = this.iD;
    data['TYPE'] = this.tYPE;
    data['TYPEID'] = this.tYPEID;
    data['superList'] = this.superList;
    data['subList'] = this.subList;
    data['nonList'] = this.nonList;
    return data;
  }
}
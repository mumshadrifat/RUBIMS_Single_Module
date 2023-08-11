class GetPhysicalSelectionLists  {
  int? total;
  Result? result;
  Null? cSList;
  Null? structureInventoryData;
  Null? yesNoList;
  Null? defects;
  Null? structures;
  Null? elementList;
  bool? isError;
  Null? message;

  GetPhysicalSelectionLists(
      {this.total,
        this.result,
        this.cSList,
        this.structureInventoryData,
        this.yesNoList,
        this.defects,
        this.structures,
        required this.elementList,
        this.isError,
        this.message});

  GetPhysicalSelectionLists.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    result =
    json['Result'] != null ? Result.fromJson(json['Result']) : null;
    cSList = json['CSList'];
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
    if (this.result != null) {
      data['Result'] = this.result!.toJson();
    }
    data['CSList'] = this.cSList;
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

class Result {
  List<WearingCourse>? wearingCourse;
  List<TypesOfRailing>? typesOfRailing;
  List<Bracing>? bracing;
  List<Tieandhanger>? tieandhanger;
  List<ElectricitySource>? electricitySource;
  List<MaterialType>? materialType;
  List<FoundationType>? foundationType;
  List<ConditionType>? conditionType;
  List<ProtectionType>? protectionType;
  List<ApprochMaterialType>? approchMaterialType;
  List<ElementList>? elementList;

  Result(
      {this.wearingCourse,
        this.typesOfRailing,
        this.bracing,
        this.tieandhanger,
        this.electricitySource,
        this.materialType,
        this.foundationType,
        this.conditionType,
        this.protectionType,
        this.approchMaterialType,
        this.elementList});

  Result.fromJson(Map<String, dynamic> json) {
    if (json['wearingCourse'] != null) {
      wearingCourse = <WearingCourse>[];
      json['wearingCourse'].forEach((v) {
        wearingCourse!.add(new WearingCourse.fromJson(v));
      });
    }
    if (json['typesOfRailing'] != null) {
      typesOfRailing = <TypesOfRailing>[];
      json['typesOfRailing'].forEach((v) {
        typesOfRailing!.add(new TypesOfRailing.fromJson(v));
      });
    }
    if (json['bracing'] != null) {
      bracing = <Bracing>[];
      json['bracing'].forEach((v) {
        bracing!.add(new Bracing.fromJson(v));
      });
    }
    if (json['tieandhanger'] != null) {
      tieandhanger = <Tieandhanger>[];
      json['tieandhanger'].forEach((v) {
        tieandhanger!.add(new Tieandhanger.fromJson(v));
      });
    }
    if (json['electricitySource'] != null) {
      electricitySource = <ElectricitySource>[];
      json['electricitySource'].forEach((v) {
        electricitySource!.add(new ElectricitySource.fromJson(v));
      });
    }
    if (json['materialType'] != null) {
      materialType = <MaterialType>[];
      json['materialType'].forEach((v) {
        materialType!.add(new MaterialType.fromJson(v));
      });
    }
    if (json['foundationType'] != null) {
      foundationType = <FoundationType>[];
      json['foundationType'].forEach((v) {
        foundationType!.add(new FoundationType.fromJson(v));
      });
    }
    if (json['conditionType'] != null) {
      conditionType = <ConditionType>[];
      json['conditionType'].forEach((v) {
        conditionType!.add(new ConditionType.fromJson(v));
      });
    }
    if (json['protectionType'] != null) {
      protectionType = <ProtectionType>[];
      json['protectionType'].forEach((v) {
        protectionType!.add(new ProtectionType.fromJson(v));
      });
    }
    if (json['approchMaterialType'] != null) {
      approchMaterialType = <ApprochMaterialType>[];
      json['approchMaterialType'].forEach((v) {
        approchMaterialType!.add(new ApprochMaterialType.fromJson(v));
      });
    }
    if (json['elementList'] != null) {
      elementList = <ElementList>[];
      json['elementList'].forEach((v) {
        elementList!.add(new ElementList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.wearingCourse != null) {
      data['wearingCourse'] =
          this.wearingCourse!.map((v) => v.toJson()).toList();
    }
    if (this.typesOfRailing != null) {
      data['typesOfRailing'] =
          this.typesOfRailing!.map((v) => v.toJson()).toList();
    }
    if (this.bracing != null) {
      data['bracing'] = this.bracing!.map((v) => v.toJson()).toList();
    }
    if (this.tieandhanger != null) {
      data['tieandhanger'] = this.tieandhanger!.map((v) => v.toJson()).toList();
    }
    if (this.electricitySource != null) {
      data['electricitySource'] =
          this.electricitySource!.map((v) => v.toJson()).toList();
    }
    if (this.materialType != null) {
      data['materialType'] = this.materialType!.map((v) => v.toJson()).toList();
    }
    if (this.foundationType != null) {
      data['foundationType'] =
          this.foundationType!.map((v) => v.toJson()).toList();
    }
    if (this.conditionType != null) {
      data['conditionType'] =
          this.conditionType!.map((v) => v.toJson()).toList();
    }
    if (this.protectionType != null) {
      data['protectionType'] =
          this.protectionType!.map((v) => v.toJson()).toList();
    }
    if (this.approchMaterialType != null) {
      data['approchMaterialType'] =
          this.approchMaterialType!.map((v) => v.toJson()).toList();
    }
    if (this.elementList != null) {
      data['elementList'] = this.elementList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WearingCourse {
  String? value;
  String? text;

  WearingCourse({this.value, this.text});

  WearingCourse.fromJson(Map<String, dynamic> json) {
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
class TypesOfRailing {
  String? value;
  String? text;

  TypesOfRailing({this.value, this.text});

  TypesOfRailing.fromJson(Map<String, dynamic> json) {
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
class Bracing {
  String? value;
  String? text;

  Bracing({this.value, this.text});

  Bracing.fromJson(Map<String, dynamic> json) {
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
class Tieandhanger {
  String? value;
  String? text;

  Tieandhanger({this.value, this.text});

  Tieandhanger.fromJson(Map<String, dynamic> json) {
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
class ElectricitySource {
  String? value;
  String? text;

  ElectricitySource({this.value, this.text});

  ElectricitySource.fromJson(Map<String, dynamic> json) {
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
class MaterialType {
  String? value;
  String? text;

  MaterialType({this.value, this.text});

  MaterialType.fromJson(Map<String, dynamic> json) {
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
class FoundationType {
  String? value;
  String? text;

  FoundationType({this.value, this.text});

  FoundationType.fromJson(Map<String, dynamic> json) {
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
class ConditionType {
  String? value;
  String? text;

  ConditionType({this.value, this.text});

  ConditionType.fromJson(Map<String, dynamic> json) {
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
class ProtectionType {
  String? value;
  String? text;

  ProtectionType({this.value, this.text});

  ProtectionType.fromJson(Map<String, dynamic> json) {
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
class ApprochMaterialType {
  String? value;
  String? text;

  ApprochMaterialType({this.value, this.text});

  ApprochMaterialType.fromJson(Map<String, dynamic> json) {
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
class ElementList {
  double? value;
  String? text;

  ElementList({this.value, this.text});

  ElementList.fromJson(Map<String, dynamic> json) {
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

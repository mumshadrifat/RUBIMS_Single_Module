class GetIdentificationAndLocation {
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

  GetIdentificationAndLocation(
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

  GetIdentificationAndLocation.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    result =
    json['Result'] != null ? new Result.fromJson(json['Result']) : null;
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
  IdentificationAndLocationModel? identificationAndLocationModel;
  List<FacilitiesCarried>? facilitiesCarried;

  Result({this.identificationAndLocationModel, this.facilitiesCarried});

  Result.fromJson(Map<String, dynamic> json) {
    identificationAndLocationModel =
    json['IdentificationAndLocationModel'] != null
        ? new IdentificationAndLocationModel.fromJson(
        json['IdentificationAndLocationModel'])
        : null;
    if (json['FacilitiesCarried'] != null) {
      facilitiesCarried = <FacilitiesCarried>[];
      json['FacilitiesCarried'].forEach((v) {
        facilitiesCarried!.add(new FacilitiesCarried.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.identificationAndLocationModel != null) {
      data['IdentificationAndLocationModel'] =
          this.identificationAndLocationModel!.toJson();
    }
    if (this.facilitiesCarried != null) {
      data['FacilitiesCarried'] =
          this.facilitiesCarried!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class IdentificationAndLocationModel {
  int? identiNo;
  int? invNo;
  String? chainage;
  String? longitude;
  String? latitude;
  String? altitude;
  int? featureIntersected;

  IdentificationAndLocationModel(
      {this.identiNo,
        this.invNo,
        this.chainage,
        this.longitude,
        this.latitude,
        this.altitude,
        this.featureIntersected});

  IdentificationAndLocationModel.fromJson(Map<String, dynamic> json) {
    identiNo = json['identi_no'];
    invNo = json['inv_no'];
    chainage = json['chainage'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    altitude = json['altitude'];
    featureIntersected = json['feature_intersected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['identi_no'] = this.identiNo;
    data['inv_no'] = this.invNo;
    data['chainage'] = this.chainage;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['altitude'] = this.altitude;
    data['feature_intersected'] = this.featureIntersected;
    return data;
  }
}

class FacilitiesCarried {
  int? value;
  String? text;

  FacilitiesCarried({this.value, this.text});

  FacilitiesCarried.fromJson(Map<String, dynamic> json) {
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

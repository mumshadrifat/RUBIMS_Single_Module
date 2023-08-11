class GetTrafficandLoadInfo {
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

  GetTrafficandLoadInfo(
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

  GetTrafficandLoadInfo.fromJson(Map<String, dynamic> json) {
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
  int? slNo;
  int? invNo;
  double? tlAverageWidth;
  double? tlDesignLoad;
  double? tlPostedVehicle;
  double? tlAssessedVehicle;
  String? entryUser;
  String? entryUserpc;

  Result(
      {this.slNo,
        this.invNo,
        this.tlAverageWidth,
        this.tlDesignLoad,
        this.tlPostedVehicle,
        this.tlAssessedVehicle,
        this.entryUser,
        this.entryUserpc});

  Result.fromJson(Map<String, dynamic> json) {
    slNo = json['sl_no'];
    invNo = json['inv_no'];
    tlAverageWidth = json['tl_average_width'];
    tlDesignLoad = json['tl_design_load'];
    tlPostedVehicle = json['tl_posted_vehicle'];
    tlAssessedVehicle = json['tl_assessed_vehicle'];
    entryUser = json['entry_user'];
    entryUserpc = json['entry_userpc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sl_no'] = this.slNo;
    data['inv_no'] = this.invNo;
    data['tl_average_width'] = this.tlAverageWidth;
    data['tl_design_load'] = this.tlDesignLoad;
    data['tl_posted_vehicle'] = this.tlPostedVehicle;
    data['tl_assessed_vehicle'] = this.tlAssessedVehicle;
    data['entry_user'] = this.entryUser;
    data['entry_userpc'] = this.entryUserpc;
    return data;
  }
}

class GetChannelRiver {
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

  GetChannelRiver(
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

  GetChannelRiver.fromJson(Map<String, dynamic> json) {
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
  ChannelAndRiverInfoModel? channelAndRiverInfoModel;
  List<ChannelType>? channelType;
  List<Geographic>? geographic;
  List<FlowType>? flowType;
  List<Salinity>? salinity;
  List<ChannelProtection>? channelProtection;

  Result(
      {this.channelAndRiverInfoModel,
        this.channelType,
        this.geographic,
        this.flowType,
        this.salinity,
        this.channelProtection});

  Result.fromJson(Map<String, dynamic> json) {

    channelAndRiverInfoModel = json['ChannelAndRiverInfoModel'] != null
        ? new ChannelAndRiverInfoModel.fromJson(
        json['ChannelAndRiverInfoModel'])
        : null;
    if (json['ChannelType'] != null) {
      channelType = <ChannelType>[];
      json['ChannelType'].forEach((v) {
        channelType!.add(new ChannelType.fromJson(v));
      });
    }
    if (json['Geographic'] != null) {
      geographic = <Geographic>[];
      json['Geographic'].forEach((v) {
        geographic!.add(new Geographic.fromJson(v));
      });
    }
    if (json['FlowType'] != null) {
      flowType = <FlowType>[];
      json['FlowType'].forEach((v) {
        flowType!.add(new FlowType.fromJson(v));
      });
    }
    if (json['Salinity'] != null) {
      salinity = <Salinity>[];
      json['Salinity'].forEach((v) {
        salinity!.add(new Salinity.fromJson(v));
      });
    }
    if (json['ChannelProtection'] != null) {
      channelProtection = <ChannelProtection>[];
      json['ChannelProtection'].forEach((v) {
        channelProtection!.add(new ChannelProtection.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.channelAndRiverInfoModel != null) {
      data['ChannelAndRiverInfoModel'] =
          this.channelAndRiverInfoModel!.toJson();
    }
    if (this.channelType != null) {
      data['ChannelType'] = this.channelType!.map((v) => v.toJson()).toList();
    }
    if (this.geographic != null) {
      data['Geographic'] = this.geographic!.map((v) => v.toJson()).toList();
    }
    if (this.flowType != null) {
      data['FlowType'] = this.flowType!.map((v) => v.toJson()).toList();
    }
    if (this.salinity != null) {
      data['Salinity'] = this.salinity!.map((v) => v.toJson()).toList();
    }
    if (this.channelProtection != null) {
      data['ChannelProtection'] =
          this.channelProtection!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ChannelAndRiverInfoModel {
  int? slNo;
  int? invNo;
  String? crName;
  double? crWidth;
  double? crFloodLevel;
  double? crChannelType;
  String? channelType;
  String? flowType;
  String? geographic;
  String? salinity;
  double? crGeographic;
  double? crFlowType;
  double? crSalinity;
  double? crProtection;

  ChannelAndRiverInfoModel(
      {this.slNo,
        this.invNo,
        this.crName,
        this.crWidth,
        this.crFloodLevel,
        this.crChannelType,
        this.channelType,
        this.flowType,
        this.geographic,
        this.salinity,
        this.crGeographic,
        this.crFlowType,
        this.crSalinity,
        this.crProtection});

  ChannelAndRiverInfoModel.fromJson(Map<String, dynamic> json) {
    slNo = json['sl_no'];
    invNo = json['inv_no'];
    crName = json['cr_name'];
    crWidth = json['cr_width'];
    crFloodLevel = json['cr_flood_level'];
    crChannelType = json['cr_channel_type'];
    channelType = json['channelType'];
    flowType = json['flowType'];
    geographic = json['geographic'];
    salinity = json['salinity'];
    crGeographic = json['cr_geographic'];
    crFlowType = json['cr_flow_type'];
    crSalinity = json['cr_salinity'];
    crProtection = json['cr_protection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sl_no'] = this.slNo;
    data['inv_no'] = this.invNo;
    data['cr_name'] = this.crName;
    data['cr_width'] = this.crWidth;
    data['cr_flood_level'] = this.crFloodLevel;
    data['cr_channel_type'] = this.crChannelType;
    data['channelType'] = this.channelType;
    data['flowType'] = this.flowType;
    data['geographic'] = this.geographic;
    data['salinity'] = this.salinity;
    data['cr_geographic'] = this.crGeographic;
    data['cr_flow_type'] = this.crFlowType;
    data['cr_salinity'] = this.crSalinity;
    data['cr_protection'] = this.crProtection;
    return data;
  }
}

class ChannelType {
  int? value;
  String? text;

  ChannelType({this.value, this.text});

  ChannelType.fromJson(Map<String, dynamic> json) {
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
class Geographic {
  int? value;
  String? text;

  Geographic({this.value, this.text});

  Geographic.fromJson(Map<String, dynamic> json) {
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
class FlowType {
  int? value;
  String? text;

  FlowType({this.value, this.text});

  FlowType.fromJson(Map<String, dynamic> json) {
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
class Salinity {
  int? value;
  String? text;

  Salinity({this.value, this.text});

  Salinity.fromJson(Map<String, dynamic> json) {
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
class ChannelProtection {
  int? value;
  String? text;

  ChannelProtection({this.value, this.text});

  ChannelProtection.fromJson(Map<String, dynamic> json) {
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

class GetPhysicalInventory {
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

  GetPhysicalInventory(
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

  GetPhysicalInventory.fromJson(Map<String, dynamic> json) {
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
  int? inspStrno;
  int? invNo;
  double? supWidth;
  double? supCarriWidth;
  double? supSidewalkLs;
  double? supSidewalkRs;
  String? supWearingCourse;
  double? supBankDistance;
  String? supRailingTypes;
  String? supTieHanger;
  String? supElectrictySur;
  String? supBracing;
  double? supLightPostsL;
  double? supLightPostsR;
  String? subAbutmentEnd;
  String? subWing;
  String? subFWing;
  String? subIntermediate;
  String? subPosAbut;
  String? subNoCol;
  String? subNoPile;
  String? subAbutment;
  String? subPier;
  String? subPile;
  String? nonProtectType;
  String? nonBApp;
  String? nonFProtectType;
  String? nonFApp;
  String? nonMaterialType;
  String? nonReqLengthB;
  String? nonReqLengthF;
  String? nonApproachRoad;
  String? nonApron;
  String? nonCutOffWall;
  String? nonApproachSlab;
  String? nonDrainSysBack;
  String? nonDrainSysFront;
  String? nonOutletSysBack;
  String? nonOutletSysFront;
  List<SubElementDetailsModels>? subElementDetailsModels;
  List<RbmPhyCharspanModels>? rbmPhyCharspanModels;

  Result(
      {this.inspStrno,
        this.invNo,
        this.supWidth,
        this.supCarriWidth,
        this.supSidewalkLs,
        this.supSidewalkRs,
        this.supWearingCourse,
        this.supBankDistance,
        this.supRailingTypes,
        this.supTieHanger,
        this.supElectrictySur,
        this.supBracing,
        this.supLightPostsL,
        this.supLightPostsR,
        this.subAbutmentEnd,
        this.subWing,
        this.subFWing,
        this.subIntermediate,
        this.subPosAbut,
        this.subNoCol,
        this.subNoPile,
        this.subAbutment,
        this.subPier,
        this.subPile,
        this.nonProtectType,
        this.nonBApp,
        this.nonFProtectType,
        this.nonFApp,
        this.nonMaterialType,
        this.nonReqLengthB,
        this.nonReqLengthF,
        this.nonApproachRoad,
        this.nonApron,
        this.nonCutOffWall,
        this.nonApproachSlab,
        this.nonDrainSysBack,
        this.nonDrainSysFront,
        this.nonOutletSysBack,
        this.nonOutletSysFront,
        this.subElementDetailsModels,
        this.rbmPhyCharspanModels});

  Result.fromJson(Map<String, dynamic> json) {
    inspStrno = json['insp_strno'];
    invNo = json['inv_no'];
    supWidth = json['sup_width'];
    supCarriWidth = json['sup_carri_width'];
    supSidewalkLs = json['sup_sidewalk_ls'];
    supSidewalkRs = json['sup_sidewalk_rs'];
    supWearingCourse = json['sup_wearing_course'];
    supBankDistance = json['sup_bank_distance'];
    supRailingTypes = json['sup_railing_types'];
    supTieHanger = json['sup_tie_hanger'];
    supElectrictySur = json['sup_electricty_sur'];
    supBracing = json['sup_bracing'];
    supLightPostsL = json['sup_light_posts_l'];
    supLightPostsR = json['sup_light_posts_r'];
    subAbutmentEnd = json['sub_abutment_end'];
    subWing = json['sub_wing'];
    subFWing = json['sub_f_wing'];
    subIntermediate = json['sub_intermediate'];
    subPosAbut = json['sub_pos_abut'];
    subNoCol = json['sub_no_col'];
    subNoPile = json['sub_no_pile'];
    subAbutment = json['sub_abutment'];
    subPier = json['sub_pier'];
    subPile = json['sub_pile'];
    nonProtectType = json['non_protect_type'];
    nonBApp = json['non_b_app'];
    nonFProtectType = json['non_f_protect_type'];
    nonFApp = json['non_f_app'];
    nonMaterialType = json['non_material_type'];
    nonReqLengthB = json['non_req_length_b'];
    nonReqLengthF = json['non_req_length_f'];
    nonApproachRoad = json['non_approach_road'];
    nonApron = json['non_apron'];
    nonCutOffWall = json['non_Cut_off_wall'];
    nonApproachSlab = json['non_approach_slab'];
    nonDrainSysBack = json['non_drain_sys_back'];
    nonDrainSysFront = json['non_drain_sys_front'];
    nonOutletSysBack = json['non_outlet_sys_back'];
    nonOutletSysFront = json['non_outlet_sys_front'];
    if (json['SubElementDetailsModels'] != null) {
      subElementDetailsModels = <SubElementDetailsModels>[];
      json['SubElementDetailsModels'].forEach((v) {
        subElementDetailsModels!.add(new SubElementDetailsModels.fromJson(v));
      });
    }
    if (json['RbmPhyCharspanModels'] != null) {
      rbmPhyCharspanModels = <RbmPhyCharspanModels>[];
      json['RbmPhyCharspanModels'].forEach((v) {
        rbmPhyCharspanModels!.add(new RbmPhyCharspanModels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['insp_strno'] = this.inspStrno;
    data['inv_no'] = this.invNo;
    data['sup_width'] = this.supWidth;
    data['sup_carri_width'] = this.supCarriWidth;
    data['sup_sidewalk_ls'] = this.supSidewalkLs;
    data['sup_sidewalk_rs'] = this.supSidewalkRs;
    data['sup_wearing_course'] = this.supWearingCourse;
    data['sup_bank_distance'] = this.supBankDistance;
    data['sup_railing_types'] = this.supRailingTypes;
    data['sup_tie_hanger'] = this.supTieHanger;
    data['sup_electricty_sur'] = this.supElectrictySur;
    data['sup_bracing'] = this.supBracing;
    data['sup_light_posts_l'] = this.supLightPostsL;
    data['sup_light_posts_r'] = this.supLightPostsR;
    data['sub_abutment_end'] = this.subAbutmentEnd;
    data['sub_wing'] = this.subWing;
    data['sub_f_wing'] = this.subFWing;
    data['sub_intermediate'] = this.subIntermediate;
    data['sub_pos_abut'] = this.subPosAbut;
    data['sub_no_col'] = this.subNoCol;
    data['sub_no_pile'] = this.subNoPile;
    data['sub_abutment'] = this.subAbutment;
    data['sub_pier'] = this.subPier;
    data['sub_pile'] = this.subPile;
    data['non_protect_type'] = this.nonProtectType;
    data['non_b_app'] = this.nonBApp;
    data['non_f_protect_type'] = this.nonFProtectType;
    data['non_f_app'] = this.nonFApp;
    data['non_material_type'] = this.nonMaterialType;
    data['non_req_length_b'] = this.nonReqLengthB;
    data['non_req_length_f'] = this.nonReqLengthF;
    data['non_approach_road'] = this.nonApproachRoad;
    data['non_apron'] = this.nonApron;
    data['non_Cut_off_wall'] = this.nonCutOffWall;
    data['non_approach_slab'] = this.nonApproachSlab;
    data['non_drain_sys_back'] = this.nonDrainSysBack;
    data['non_drain_sys_front'] = this.nonDrainSysFront;
    data['non_outlet_sys_back'] = this.nonOutletSysBack;
    data['non_outlet_sys_front'] = this.nonOutletSysFront;
    if (this.subElementDetailsModels != null) {
      data['SubElementDetailsModels'] =
          this.subElementDetailsModels!.map((v) => v.toJson()).toList();
    }
    if (this.rbmPhyCharspanModels != null) {
      data['RbmPhyCharspanModels'] =
          this.rbmPhyCharspanModels!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubElementDetailsModels {
  int? strId;
  int? subElementSerial;
  double? subElementId;

  SubElementDetailsModels(
      {this.strId, this.subElementSerial, this.subElementId});

  SubElementDetailsModels.fromJson(Map<String, dynamic> json) {
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

class RbmPhyCharspanModels {
  double? slNo;
  double? invNo;
  String? spanName;
  String? spanLength;
  List<Components>? components;

  RbmPhyCharspanModels(
      {this.slNo, this.invNo, this.spanName, this.spanLength, this.components});

  RbmPhyCharspanModels.fromJson(Map<String, dynamic> json) {
    slNo = json['sl_no'];
    invNo = json['inv_no'];
    spanName = json['span_name'];
    spanLength = json['span_length'];
    if (json['Components'] != null) {
      components = <Components>[];
      json['Components'].forEach((v) {
        components!.add(new Components.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sl_no'] = this.slNo;
    data['inv_no'] = this.invNo;
    data['span_name'] = this.spanName;
    data['span_length'] = this.spanLength;
    if (this.components != null) {
      data['Components'] = this.components!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Components {
  double? componentId;
  int? elementSerial;
  String? elementName;

  Components({this.componentId, this.elementSerial, this.elementName});

  Components.fromJson(Map<String, dynamic> json) {
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

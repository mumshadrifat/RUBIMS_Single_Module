class InspectionPost {
  String? sTRUCTID;
  String? iNSPDATE;
  List<InspObsIndviStrTmps>? inspObsIndviStrTmps;
  VisualObservation? visualObservation;

  InspectionPost(
      {this.sTRUCTID,
        this.iNSPDATE,
        this.inspObsIndviStrTmps,
        this.visualObservation});

  InspectionPost.fromJson(Map<String, dynamic> json) {
    sTRUCTID = json['STRUCTID'];
    iNSPDATE = json['INSP_DATE'];
    if (json['insp_Obs_IndviStr_Tmps'] != null) {
      inspObsIndviStrTmps = <InspObsIndviStrTmps>[];
      json['insp_Obs_IndviStr_Tmps'].forEach((v) {
        inspObsIndviStrTmps!.add(new InspObsIndviStrTmps.fromJson(v));
      });
    }
    visualObservation = json['visual_observation'] != null
        ? new VisualObservation.fromJson(json['visual_observation'])
        : null;
  }
  InspectionPost.fromJson2(Map<dynamic, dynamic> json) {
    sTRUCTID = json['STRUCTID'];
    iNSPDATE = json['INSP_DATE'];
    if (json['insp_Obs_IndviStr_Tmps'] != null) {
      inspObsIndviStrTmps = <InspObsIndviStrTmps>[];
      json['insp_Obs_IndviStr_Tmps'].forEach((v) {
        inspObsIndviStrTmps!.add(new InspObsIndviStrTmps.fromJson(v));
      });
    }
    visualObservation = json['visual_observation'] != null
        ? new VisualObservation.fromJson(json['visual_observation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['STRUCTID'] = this.sTRUCTID;
    data['INSP_DATE'] = this.iNSPDATE;
    if (this.inspObsIndviStrTmps != null) {
      data['insp_Obs_IndviStr_Tmps'] =
          this.inspObsIndviStrTmps!.map((v) => v.toJson()).toList();
    }
    if (this.visualObservation != null) {
      data['visual_observation'] = this.visualObservation!.toJson();
    }
    return data;
  }
}

class InspObsIndviStrTmps {
  String? cOMPID;
  String? cOMPSLNO;
  String? sPALLING;
  String? rEMARK;
  String? sETTLEMENT;
  String? tILTING;
  String? cRACKS;
  String? mISSECTION;
  String? mOVEMENT;
  String? rEBAR;
  String? sCOURING;
  String? oBSTRUCT;
  String? aBRASION;
  String? dISTORTION;
  String? cOLLISION;
  String? dAMAGED;
  String? eROSION;
  String? pATCHED;
  String? dEFORMATION;
  String? aCCUMULATION;
  String? eFFLORESCENCE;
  String? cRACKOFDECK;
  String? dELAMINATION;
  int? insId;
  String? compoName;

  InspObsIndviStrTmps(
      {this.cOMPID,
        this.cOMPSLNO,
        this.sPALLING,
        this.rEMARK,
        this.sETTLEMENT,
        this.tILTING,
        this.cRACKS,
        this.mISSECTION,
        this.mOVEMENT,
        this.rEBAR,
        this.sCOURING,
        this.oBSTRUCT,
        this.aBRASION,
        this.dISTORTION,
        this.cOLLISION,
        this.dAMAGED,
        this.eROSION,
        this.pATCHED,
        this.dEFORMATION,
        this.aCCUMULATION,
        this.eFFLORESCENCE,
        this.cRACKOFDECK,
        this.dELAMINATION,
        this.insId,
        this.compoName,
      });

  InspObsIndviStrTmps.fromJson(Map<String, dynamic> json) {
    cOMPID = json['COMP_ID'];
    cOMPSLNO = json['COMP_SLNO'];
    sPALLING = json['SPALLING'];
    rEMARK = json['REMARK'];
    sETTLEMENT = json['SETTLEMENT'];
    tILTING = json['TILTING'];
    cRACKS = json['CRACKS'];
    mISSECTION = json['MISSECTION'];
    mOVEMENT = json['MOVEMENT'];
    rEBAR = json['REBAR'];
    sCOURING = json['SCOURING'];
    oBSTRUCT = json['OBSTRUCT'];
    aBRASION = json['ABRASION'];
    dISTORTION = json['DISTORTION'];
    cOLLISION = json['COLLISION'];
    dAMAGED = json['DAMAGED'];
    eROSION = json['EROSION'];
    pATCHED = json['PATCHED'];
    dEFORMATION = json['DEFORMATION'];
    aCCUMULATION = json['ACCUMULATION'];
    eFFLORESCENCE = json['EFFLORESCENCE'];
    cRACKOFDECK = json['CRACK_OF_DECK'];
    dELAMINATION = json['DELAMINATION'];
    insId = json['insId'];
    compoName = json['compoName'];
  }
  InspObsIndviStrTmps.fromJson2(Map<dynamic, dynamic> json) {
    cOMPID = json['COMP_ID'];
    cOMPSLNO = json['COMP_SLNO'];
    sPALLING = json['SPALLING'];
    rEMARK = json['REMARK'];
    sETTLEMENT = json['SETTLEMENT'];
    tILTING = json['TILTING'];
    cRACKS = json['CRACKS'];
    mISSECTION = json['MISSECTION'];
    mOVEMENT = json['MOVEMENT'];
    rEBAR = json['REBAR'];
    sCOURING = json['SCOURING'];
    oBSTRUCT = json['OBSTRUCT'];
    aBRASION = json['ABRASION'];
    dISTORTION = json['DISTORTION'];
    cOLLISION = json['COLLISION'];
    dAMAGED = json['DAMAGED'];
    eROSION = json['EROSION'];
    pATCHED = json['PATCHED'];
    dEFORMATION = json['DEFORMATION'];
    aCCUMULATION = json['ACCUMULATION'];
    eFFLORESCENCE = json['EFFLORESCENCE'];
    cRACKOFDECK = json['CRACK_OF_DECK'];
    dELAMINATION = json['DELAMINATION'];
    insId = json['insId'];
    compoName = json['compoName'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['COMP_ID'] = this.cOMPID;
    data['COMP_SLNO'] = this.cOMPSLNO;
    data['SPALLING'] = this.sPALLING;
    data['REMARK'] = this.rEMARK;
    data['SETTLEMENT'] = this.sETTLEMENT;
    data['TILTING'] = this.tILTING;
    data['CRACKS'] = this.cRACKS;
    data['MISSECTION'] = this.mISSECTION;
    data['MOVEMENT'] = this.mOVEMENT;
    data['REBAR'] = this.rEBAR;
    data['SCOURING'] = this.sCOURING;
    data['OBSTRUCT'] = this.oBSTRUCT;
    data['ABRASION'] = this.aBRASION;
    data['DISTORTION'] = this.dISTORTION;
    data['COLLISION'] = this.cOLLISION;
    data['DAMAGED'] = this.dAMAGED;
    data['EROSION'] = this.eROSION;
    data['PATCHED'] = this.pATCHED;
    data['DEFORMATION'] = this.dEFORMATION;
    data['ACCUMULATION'] = this.aCCUMULATION;
    data['EFFLORESCENCE'] = this.eFFLORESCENCE;
    data['CRACK_OF_DECK'] = this.cRACKOFDECK;
    data['DELAMINATION'] = this.dELAMINATION;
    data['insId'] = this.insId;
    data['compoName'] = this.compoName;

    return data;
  }
}

class VisualObservation {
  String? embankmentB;
  String? embankmentF;
  String? protectiveB;
  String? protectiveF;
  String? pavementB;
  String? pavementF;
  String? wearingDeck;
  String? expansionDeck;
  String? checkerDeck;
  String? wheelGuardL;
  String? wheelGuardR;
  String? railbarpostL;
  String? railbarpostR;
  String? guideTrafficB;
  String? guideTrafficF;
  String? surfacewallB2;
  String? surfacewallF2;
  String? guideTrafficB2;
  String? guideTrafficF2;
  String? railingWheelL2;
  String? railingWheelR2;
  String? steelmemberDeck2;
  String? deckslab2;
  String? surfaceAbutB2;
  String? surfaceAbutF2;
  String? waterflow2;
  String? obstruWaterwayU2;
  String? obstruWaterwayD2;
  int? insId;

  VisualObservation(
      {this.embankmentB,
        this.embankmentF,
        this.protectiveB,
        this.protectiveF,
        this.pavementB,
        this.pavementF,
        this.wearingDeck,
        this.expansionDeck,
        this.checkerDeck,
        this.wheelGuardL,
        this.wheelGuardR,
        this.railbarpostL,
        this.railbarpostR,
        this.guideTrafficB,
        this.guideTrafficF,
        this.surfacewallB2,
        this.surfacewallF2,
        this.guideTrafficB2,
        this.guideTrafficF2,
        this.railingWheelL2,
        this.railingWheelR2,
        this.steelmemberDeck2,
        this.deckslab2,
        this.surfaceAbutB2,
        this.surfaceAbutF2,
        this.waterflow2,
        this.obstruWaterwayU2,
        this.obstruWaterwayD2,
        this.insId});

  VisualObservation.fromJson(Map<String, dynamic> json) {
    embankmentB = json['embankment_b'];
    embankmentF = json['embankment_f'];
    protectiveB = json['protective_b '];
    protectiveF = json['protective_f '];
    pavementB = json['pavement_b '];
    pavementF = json['pavement_f '];
    wearingDeck = json['wearing_deck '];
    expansionDeck = json['expansion_deck '];
    checkerDeck = json['checker_deck '];
    wheelGuardL = json['wheelGuard_l '];
    wheelGuardR = json['wheelGuard_r '];
    railbarpostL = json['railbarpost_l '];
    railbarpostR = json['railbarpost_r '];
    guideTrafficB = json['guideTraffic_b '];
    guideTrafficF = json['guideTraffic_f '];
    surfacewallB2 = json['surfacewall_b2 '];
    surfacewallF2 = json['surfacewall_f2 '];
    guideTrafficB2 = json['guideTraffic_b2 '];
    guideTrafficF2 = json['guideTraffic_f2 '];
    railingWheelL2 = json['railingWheel_l2 '];
    railingWheelR2 = json['railingWheel_r2 '];
    steelmemberDeck2 = json['steelmember_deck2 '];
    deckslab2 = json['deckslab2 '];
    surfaceAbutB2 = json['surfaceAbut_b2 '];
    surfaceAbutF2 = json['surfaceAbut_f2 '];
    waterflow2 = json['waterflow2 '];
    obstruWaterwayU2 = json['obstru_waterway_u2 '];
    obstruWaterwayD2 = json['obstru_waterway_d2 '];
    insId = json['insId '];
  }
  VisualObservation.fromJson2(Map<dynamic, dynamic> json) {
    embankmentB = json['embankment_b'];
    embankmentF = json['embankment_f'];
    protectiveB = json['protective_b '];
    protectiveF = json['protective_f '];
    pavementB = json['pavement_b '];
    pavementF = json['pavement_f '];
    wearingDeck = json['wearing_deck '];
    expansionDeck = json['expansion_deck '];
    checkerDeck = json['checker_deck '];
    wheelGuardL = json['wheelGuard_l '];
    wheelGuardR = json['wheelGuard_r '];
    railbarpostL = json['railbarpost_l '];
    railbarpostR = json['railbarpost_r '];
    guideTrafficB = json['guideTraffic_b '];
    guideTrafficF = json['guideTraffic_f '];
    surfacewallB2 = json['surfacewall_b2 '];
    surfacewallF2 = json['surfacewall_f2 '];
    guideTrafficB2 = json['guideTraffic_b2 '];
    guideTrafficF2 = json['guideTraffic_f2 '];
    railingWheelL2 = json['railingWheel_l2 '];
    railingWheelR2 = json['railingWheel_r2 '];
    steelmemberDeck2 = json['steelmember_deck2 '];
    deckslab2 = json['deckslab2 '];
    surfaceAbutB2 = json['surfaceAbut_b2 '];
    surfaceAbutF2 = json['surfaceAbut_f2 '];
    waterflow2 = json['waterflow2 '];
    obstruWaterwayU2 = json['obstru_waterway_u2 '];
    obstruWaterwayD2 = json['obstru_waterway_d2 '];
    insId = json['insId '];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['embankment_b'] = this.embankmentB;
    data['embankment_f'] = this.embankmentF;
    data['protective_b'] = this.protectiveB;
    data['protective_f'] = this.protectiveF;
    data['pavement_b'] = this.pavementB;
    data['pavement_f'] = this.pavementF;
    data['wearing_deck'] = this.wearingDeck;
    data['expansion_deck'] = this.expansionDeck;
    data['checker_deck'] = this.checkerDeck;
    data['wheelGuard_l'] = this.wheelGuardL;
    data['wheelGuard_r'] = this.wheelGuardR;
    data['railbarpost_l'] = this.railbarpostL;
    data['railbarpost_r'] = this.railbarpostR;
    data['guideTraffic_b'] = this.guideTrafficB;
    data['guideTraffic_f'] = this.guideTrafficF;
    data['surfacewall_b2'] = this.surfacewallB2;
    data['surfacewall_f2'] = this.surfacewallF2;
    data['guideTraffic_b2'] = this.guideTrafficB2;
    data['guideTraffic_f2'] = this.guideTrafficF2;
    data['railingWheel_l2'] = this.railingWheelL2;
    data['railingWheel_r2'] = this.railingWheelR2;
    data['steelmember_deck2'] = this.steelmemberDeck2;
    data['deckslab2'] = this.deckslab2;
    data['surfaceAbut_b2'] = this.surfaceAbutB2;
    data['surfaceAbut_f2'] = this.surfaceAbutF2;
    data['waterflow2'] = this.waterflow2;
    data['obstru_waterway_u2'] = this.obstruWaterwayU2;
    data['insId'] = this.insId;
    return data;
  }
}

class StructureInventoryResponse {
  int? total;

  StructureInventoryData? structureInventoryData;

  StructureInventoryResponse({
    this.structureInventoryData,
  });

  StructureInventoryResponse.fromJson(Map<String, dynamic> json) {
    total = json['Total'];

    structureInventoryData = json['StructureInventoryData'] != null
        ? new StructureInventoryData.fromJson(json['StructureInventoryData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Total'] = this.total;

    if (this.structureInventoryData != null) {
      data['StructureInventoryData'] = this.structureInventoryData!.toJson();
    }

    return data;
  }
}

class StructureInventoryData {
  String? structure;
  String? rOADNAME;
  String? rOADCODE;
  String? sTRUCTID;
  int? constructionYear;
  String? sTTYPEID;
  String? cHAINAGE;
  String? tOTALLENGTH;
  String? sTRUCTURETYPE;

  StructureInventoryData(
      {this.structure,
      this.rOADNAME,
      this.rOADCODE,
      this.sTRUCTID,
      this.constructionYear,
      this.sTTYPEID,
      this.cHAINAGE,
      this.tOTALLENGTH,
      this.sTRUCTURETYPE});

  StructureInventoryData.fromJson(Map<String, dynamic> json) {
    structure = json['structure'];
    rOADNAME = json['ROADNAME'];
    rOADCODE = json['ROADCODE'];
    sTRUCTID = json['STRUCTID'];
    constructionYear = json['construction_year'];
    sTTYPEID = json['STTYPEID'];
    cHAINAGE = json['CHAINAGE'];
    tOTALLENGTH = json['TOTALLENGTH'];
    sTRUCTURETYPE = json['STRUCTURETYPE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['structure'] = this.structure;
    data['ROADNAME'] = this.rOADNAME;
    data['ROADCODE'] = this.rOADCODE;
    data['STRUCTID'] = this.sTRUCTID;
    data['construction_year'] = this.constructionYear;
    data['STTYPEID'] = this.sTTYPEID;
    data['CHAINAGE'] = this.cHAINAGE;
    data['TOTALLENGTH'] = this.tOTALLENGTH;
    data['STRUCTURETYPE'] = this.sTRUCTURETYPE;
    return data;
  }
}

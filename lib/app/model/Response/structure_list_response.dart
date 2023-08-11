class Structurelist {
  int? total;

  List<Structures>? structures;

  bool? isError;


  Structurelist(
      {this.total,

        this.structures,

        this.isError,
        });

  Structurelist.fromJson(Map<String, dynamic> json) {
    total = json['Total'];


    if (json['Structures'] != null) {
      structures = <Structures>[];
      json['Structures'].forEach((v) {
        structures!.add(new Structures.fromJson(v));
      });
    }

    isError = json['IsError'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Total'] = this.total;





    if (this.structures != null) {
      data['Structures'] = this.structures!.map((v) => v.toJson()).toList();
    }

    data['IsError'] = this.isError;

    return data;
  }
}

class Structures {
  String? structure;
  String? rOADNAME;
  String? rOADCODE;
  String? sTRUCTID;
  int? constructionYear;
  String? sTTYPEID;
  String? cHAINAGE;
  String? tOTALLENGTH;
  String? sTRUCTURETYPE;
  String? rDTYPECODE;

  Structures(
      {this.structure,
        this.rOADNAME,
        this.rOADCODE,
        this.sTRUCTID,
        this.constructionYear,
        this.sTTYPEID,
        this.cHAINAGE,
        this.tOTALLENGTH,
        this.sTRUCTURETYPE,
        this.rDTYPECODE});

  Structures.fromJson(Map<String, dynamic> json) {
    structure = json['structure'];
    rOADNAME = json['ROADNAME'];
    rOADCODE = json['ROADCODE'];
    sTRUCTID = json['STRUCTID'];
    constructionYear = json['construction_year'];
    sTTYPEID = json['STTYPEID'];
    cHAINAGE = json['CHAINAGE'];
    tOTALLENGTH = json['TOTALLENGTH'];
    sTRUCTURETYPE = json['STRUCTURETYPE'];
    rDTYPECODE = json['RDTYPECODE'];
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
    data['RDTYPECODE'] = this.rDTYPECODE;
    return data;
  }
}
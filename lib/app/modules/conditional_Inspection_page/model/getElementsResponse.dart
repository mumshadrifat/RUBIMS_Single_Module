class GetElements {
  int? total;
  Result? result;

  GetElements(
      {this.total,
        this.result,
       });

  GetElements.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    result =
    json['Result'] != null ? new Result.fromJson(json['Result']) : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Total'] = this.total;
    if (this.result != null) {
      data['Result'] = this.result!.toJson();
    }



    return data;
  }
}

class Result {
  List<SuperList>? superList;
  List<SubList>? subList;
  List<NonList>? nonList;

  Result({this.superList, this.subList, this.nonList});

  Result.fromJson(Map<String, dynamic> json) {
    if (json['superList'] != null) {
      superList = <SuperList>[];
      json['superList'].forEach((v) {
        superList!.add(new SuperList.fromJson(v));
      });
    }
    if (json['subList'] != null) {
      subList = <SubList>[];
      json['subList'].forEach((v) {
        subList!.add(new SubList.fromJson(v));
      });
    }
    if (json['nonList'] != null) {
      nonList = <NonList>[];
      json['nonList'].forEach((v) {
        nonList!.add(new NonList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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

class SuperList {
  int? iD;
  String? nAME;
  String? tYPE;
  int? tYPEID;

  SuperList({this.iD, this.nAME, this.tYPE, this.tYPEID});

  SuperList.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    nAME = json['NAME'];
    tYPE = json['TYPE'];
    tYPEID = json['TYPEID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['NAME'] = this.nAME;
    data['TYPE'] = this.tYPE;
    data['TYPEID'] = this.tYPEID;
    return data;
  }
}
class SubList {
  int? iD;
  String? nAME;
  String? tYPE;
  int? tYPEID;

  SubList({this.iD, this.nAME, this.tYPE, this.tYPEID});

  SubList.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    nAME = json['NAME'];
    tYPE = json['TYPE'];
    tYPEID = json['TYPEID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['NAME'] = this.nAME;
    data['TYPE'] = this.tYPE;
    data['TYPEID'] = this.tYPEID;
    return data;
  }
}
class NonList {
  int? iD;
  String? nAME;
  String? tYPE;
  int? tYPEID;

  NonList({this.iD, this.nAME, this.tYPE, this.tYPEID});

  NonList.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    nAME = json['NAME'];
    tYPE = json['TYPE'];
    tYPEID = json['TYPEID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['NAME'] = this.nAME;
    data['TYPE'] = this.tYPE;
    data['TYPEID'] = this.tYPEID;
    return data;
  }
}

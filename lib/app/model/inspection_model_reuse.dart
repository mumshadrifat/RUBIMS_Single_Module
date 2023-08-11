class MainStructure {
  List<SuperList>? superList;
  List<SubList>? subList;
  List<NonList>? nonList;

  MainStructure({this.superList, this.subList, this.nonList});

  MainStructure.fromJson(Map<String, dynamic> json) {
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
  List<SuperListDefects>? superListDefect;
  String? remarks;

  SuperList({
    this.superListDefect,
    this.remarks,
  });

  SuperList.fromJson(Map<String, dynamic> json) {
    if (json['superList'] != null) {
      superListDefect = <SuperListDefects>[];
      json['superList'].forEach((v) {
        superListDefect!.add(new SuperListDefects.fromJson(v));
      });
    }
    remarks = json['remarks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.superListDefect != null) {
      data['superList'] = this.superListDefect!.map((v) => v.toJson()).toList();
    }
    data['remarks'] = this.remarks;

    return data;
  }
}

class SubList {
  List<SubListDefects>? subListDefect;
  String? remarks;

  SubList({
    this.subListDefect,
    this.remarks,
  });

  SubList.fromJson(Map<String, dynamic> json) {
    if (json['subListDefect'] != null) {
      subListDefect = <SubListDefects>[];
      json['subListDefect'].forEach((v) {
        subListDefect!.add(new SubListDefects.fromJson(v));
      });
    }
    remarks = json['remarks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.subListDefect != null) {
      data['subListDefect'] =
          this.subListDefect!.map((v) => v.toJson()).toList();
    }
    data['remarks'] = this.remarks;

    return data;
  }
}

class NonList {
  List<NonListDefects>? nonListDefect;
  String? remarks;

  NonList({
    this.nonListDefect,
    this.remarks,
  });

  NonList.fromJson(Map<String, dynamic> json) {
    if (json['nonListDefect'] != null) {
      nonListDefect = <NonListDefects>[];
      json['nonListDefect'].forEach((v) {
        nonListDefect!.add(new NonListDefects.fromJson(v));
      });
    }
    remarks = json['remarks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nonListDefect != null) {
      data['nonListDefect'] =
          this.nonListDefect!.map((v) => v.toJson()).toList();
    }
    data['remarks'] = this.remarks;

    return data;
  }
}

//Defect
class Defects {
  List<SuperListDefects>? superList;
  List<SubListDefects>? subList;
  List<NonListDefects>? nonList;

  Defects({this.superList, this.subList, this.nonList});

  Defects.fromJson(Map<String, dynamic> json) {
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
  String? rating;

  SuperListDefects({
    this.nAME,
    this.rating,
  });

  SuperListDefects.fromJson(Map<String, dynamic> json) {
    nAME = json['NAME'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NAME'] = this.nAME;
    data['rating'] = this.rating;

    return data;
  }
}

class SubListDefects {
  String? nAME;
  String? rating;

  SubListDefects({
    this.nAME,
    this.rating,
  });

  SubListDefects.fromJson(Map<String, dynamic> json) {
    nAME = json['NAME'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NAME'] = this.nAME;
    data['rating'] = this.rating;

    return data;
  }
}

class NonListDefects {
  String? nAME;
  String? rating;

  NonListDefects({
    this.nAME,
    this.rating,
  });

  NonListDefects.fromJson(Map<String, dynamic> json) {
    nAME = json['NAME'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NAME'] = this.nAME;
    data['rating'] = this.rating;

    return data;
  }
}

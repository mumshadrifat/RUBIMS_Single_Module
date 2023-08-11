class DivisionModel {
  int? total;
  List<Divisions>? result;


  DivisionModel(
      {this.total,
        this.result,
        });

  DivisionModel.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    if (json['Result'] != null) {
      result = <Divisions>[];
      json['Result'].forEach((v) {
        result!.add(new Divisions.fromJson(v));
      });
    }

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Total'] = this.total;
    if (this.result != null) {
      data['Result'] = this.result!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class Divisions {
  int? value;
  String? text;

  Divisions({this.value, this.text});

  Divisions.fromJson(Map<String, dynamic> json) {
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
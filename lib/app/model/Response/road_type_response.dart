class RoadTypeModel {
  int? total;
  List<RoadType>? result;


  RoadTypeModel(
      {this.total,
        this.result,
        });

  RoadTypeModel.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    if (json['Result'] != null) {
      result = <RoadType>[];
      json['Result'].forEach((v) {
        result!.add(new RoadType.fromJson(v));
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

class RoadType {
  int? value;
  String? text;

  RoadType({this.value, this.text});

  RoadType.fromJson(Map<String, dynamic> json) {
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
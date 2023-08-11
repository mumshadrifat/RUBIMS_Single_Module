class DistrictModel {
  int? total;
  List<District>? result;

  DistrictModel(
      {this.total,
        this.result,
        });

  DistrictModel.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    if (json['Result'] != null) {
      result = <District>[];
      json['Result'].forEach((v) {
        result!.add(new District.fromJson(v));
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

class District {
  int? value;
  String? text;

  District({this.value, this.text});

  District.fromJson(Map<String, dynamic> json) {
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
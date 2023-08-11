class UpazilaModel {
  int? total;
  List<Upazila>? result;


  UpazilaModel(
      {this.total,
        this.result,
       });

  UpazilaModel.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    if (json['Result'] != null) {
      result = <Upazila>[];
      json['Result'].forEach((v) {
        result!.add(new Upazila.fromJson(v));
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

class Upazila {
  int? value;
  String? text;

  Upazila({this.value, this.text});

  Upazila.fromJson(Map<String, dynamic> json) {
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
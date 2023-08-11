class UserRoadResponse {
  int? total;
  List<Result>? result;
  bool? isError;
  Null? message;

  UserRoadResponse({this.total, this.result, this.isError, this.message});

  UserRoadResponse.fromJson(Map<String, dynamic> json) {
    total = json['Total'];
    if (json['Result'] != null) {
      result = <Result>[];
      json['Result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
    isError = json['IsError'];
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Total'] = this.total;
    if (this.result != null) {
      data['Result'] = this.result!.map((v) => v.toJson()).toList();
    }
    data['IsError'] = this.isError;
    data['Message'] = this.message;
    return data;
  }
}

class Result {
  int? value;
  String? text;

  Result({this.value, this.text});

  Result.fromJson(Map<String, dynamic> json) {
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
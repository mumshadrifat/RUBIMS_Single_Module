class IdentificationAndLocationPost {
  int? identiNo;
  int? invNo;
  String? chainage;
  String? longitude;
  String? latitude;
  String? altitude;
  int? featureIntersected;

  IdentificationAndLocationPost(
      {this.identiNo,
        this.invNo,
        this.chainage,
        this.longitude,
        this.latitude,
        this.altitude,
        this.featureIntersected});

  IdentificationAndLocationPost.fromJson(Map<String, dynamic> json) {
    identiNo = json['identi_no'];
    invNo = json['inv_no'];
    chainage = json['chainage'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    altitude = json['altitude'];
    featureIntersected = json['feature_intersected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['identi_no'] = this.identiNo;
    data['inv_no'] = this.invNo;
    data['chainage'] = this.chainage;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['altitude'] = this.altitude;
    data['feature_intersected'] = this.featureIntersected;
    return data;
  }
}

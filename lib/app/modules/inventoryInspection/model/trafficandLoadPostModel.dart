class TrafficandLoadPostModel {
  int? slNo;
  int? invNo;
  double? tlAverageWidth;
  double? tlDesignLoad;
  double? tlPostedVehicle;
  double? tlAssessedVehicle;

  TrafficandLoadPostModel(
      {this.slNo,
        this.invNo,
        this.tlAverageWidth,
        this.tlDesignLoad,
        this.tlPostedVehicle,
        this.tlAssessedVehicle});

  TrafficandLoadPostModel.fromJson(Map<String, dynamic> json) {
    slNo = json['sl_no'];
    invNo = json['inv_no'];
    tlAverageWidth = json['tl_average_width'];
    tlDesignLoad = json['tl_design_load'];
    tlPostedVehicle = json['tl_posted_vehicle'];
    tlAssessedVehicle = json['tl_assessed_vehicle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sl_no'] = this.slNo;
    data['inv_no'] = this.invNo;
    data['tl_average_width'] = this.tlAverageWidth;
    data['tl_design_load'] = this.tlDesignLoad;
    data['tl_posted_vehicle'] = this.tlPostedVehicle;
    data['tl_assessed_vehicle'] = this.tlAssessedVehicle;
    return data;
  }
}

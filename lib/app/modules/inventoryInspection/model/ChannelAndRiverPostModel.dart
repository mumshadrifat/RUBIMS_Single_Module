class ChannelAndRiverPostModel {
  int? slNo;
  int? invNo;
  String? crName;
  int? crWidth;
  int? crFloodLevel;
  int? crChannelType;
  int? crGeographic;
  int? crFlowType;
  int? crSalinity;
  int? crProtection;

  ChannelAndRiverPostModel(
      {this.slNo,
        this.invNo,
        this.crName,
        this.crWidth,
        this.crFloodLevel,
        this.crChannelType,
        this.crGeographic,
        this.crFlowType,
        this.crSalinity,
        this.crProtection});

  ChannelAndRiverPostModel.fromJson(Map<String, dynamic> json) {
    slNo = json['sl_no'];
    invNo = json['inv_no'];
    crName = json['cr_name'];
    crWidth = json['cr_width'];
    crFloodLevel = json['cr_flood_level'];
    crChannelType = json['cr_channel_type'];
    crGeographic = json['cr_geographic'];
    crFlowType = json['cr_flow_type'];
    crSalinity = json['cr_salinity'];
    crProtection = json['cr_protection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sl_no'] = this.slNo;
    data['inv_no'] = this.invNo;
    data['cr_name'] = this.crName;
    data['cr_width'] = this.crWidth;
    data['cr_flood_level'] = this.crFloodLevel;
    data['cr_channel_type'] = this.crChannelType;
    data['cr_geographic'] = this.crGeographic;
    data['cr_flow_type'] = this.crFlowType;
    data['cr_salinity'] = this.crSalinity;
    data['cr_protection'] = this.crProtection;
    return data;
  }
}

class InsModel {
  String? structureId;
  String? insDate;


  InsModel({this.structureId, this.insDate});

  InsModel.fromJson(Map<String, dynamic> json) {
    structureId = json['STRUCTID'];
    insDate = json['INSP_DATE'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['STRUCTID'] = this.structureId;
    data['INSP_DATE'] = this.insDate;

    return data;
  }
}
import '../model/physicalCharacteristicsPostModel.dart';
import 'GetComponentsResonse.dart';

class GetRbmPhyCharspanModels {
  double? slNo;
  double? invNo;
  String? spanName;
  String? spanLength;
  List<GetComponents>? getComponents;

  GetRbmPhyCharspanModels(
      {this.slNo,
        this.invNo,
        this.spanName,
        this.spanLength,
        this.getComponents});

  GetRbmPhyCharspanModels.fromJson(Map<String, dynamic> json) {
    slNo = json['sl_no'];
    invNo = json['inv_no'];
    spanName = json['span_name'];
    spanLength = json['span_length'];
    if (json['GetComponents'] != null) {
      getComponents = <GetComponents>[];
      json['GetComponents'].forEach((v) {
        getComponents!.add(new GetComponents.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sl_no'] = this.slNo;
    data['inv_no'] = this.invNo;
    data['span_name'] = this.spanName;
    data['span_length'] = this.spanLength;
    if (this.getComponents != null) {
      data['GetComponents'] =
          this.getComponents!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

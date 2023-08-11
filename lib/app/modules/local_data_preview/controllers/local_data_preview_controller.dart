import 'package:get/get.dart';
import 'package:lged_inspection/app/data/database_helper/databse_helper.dart';

import '../../../data/api/ap_client.dart';
import '../../../model/inspection_post_model.dart';

class LocalDataPreviewController extends GetxController {
  List<Map>? listInspection;
  var insDataList = [];
  List<Map>? retriveInspection;
  List<Map>? retriveq6;
  List<Map>? retriveq7;

  InspectionPost? inspectionPost=InspectionPost();


  ApiClient apiClient=ApiClient(appBaseUrl:"http://103.245.204.238:8098");


  List<InspObsIndviStrTmps>? q6List;
  VisualObservation? visual;


  RxInt length = 0.obs;
  var insId=0;

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  dataLoading() async {
    listInspection = await DataBaseHelper.instance.insQuery();

    for (int i = 0; i < listInspection!.length; i++) {
      insDataList.add(listInspection?[i].values.toList());
    }
    print(insDataList.length);
    print(insDataList);

    print("Singe data ${insDataList[0][0]}");
    // for (int i = 0; i < insDataList.length; i++) {
    //
    //   print("i-----${i}");
    //   for (int j = 0; j < 3; i++) {
    //     print("j----${j}");
    //     if (j == 0) {
    //       //print(insDataList[i][j]);
    //     } else if (j == 1) {
    //       //print(insDataList[i][j]);
    //     }
    //   }
    // }

    print("length--${length.value = listInspection!.length}");
    //print("ins length--${ insDataList?.length}");
    update();
  }
  dataRetrieveSubmit(int insId) async {
    retriveInspection=await DataBaseHelper.instance.selectInspection(insId);
    retriveq6=await DataBaseHelper.instance.newQuery(insId);
    retriveq7=await DataBaseHelper.instance.visaulQuery(insId);


    inspectionPost?.iNSPDATE=listInspection?[0]["INSP_DATE"];
    inspectionPost?.sTRUCTID=listInspection?[0]["STRUCTID"];
    print("insDate===${ inspectionPost?.iNSPDATE}");

    retriveq6?.forEach((row) {
      q6List?.add(InspObsIndviStrTmps.fromJson2(row));
      print(row);

    });
    inspectionPost?.inspObsIndviStrTmps=q6List;
    visual=await VisualObservation.fromJson2(retriveq7![0]);
    inspectionPost?.visualObservation=visual;
    print("total json");
    print(inspectionPost?.toJson());
    print("total visual");
    print(inspectionPost?.visualObservation?.toJson());
    Response response=await apiClient.postData("/api/Rubims/inspection/save-data",inspectionPost?.toJson());
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      print("success post");
      print(response.body.toString());
      update();
    } else {
      print("post Failed");
    }



  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

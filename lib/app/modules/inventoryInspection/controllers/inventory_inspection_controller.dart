import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lged_inspection/app/data/api/ap_client.dart';
import 'package:lged_inspection/app/modules/inventoryInspection/model/GetPhysicalSelectionListResponse.dart';

import '../../conditional_Inspection_page/controllers/conditional_inspection_page_controller.dart';
import '../../structure_inventory/controllers/structure_inventory_controller.dart';
import '../../structure_inventory_Save_Data/controllers/structure_inventory_save_data_controller.dart';

import '../components/GetComponentsResonse.dart';
import '../components/GetRbmPhyCharspanResponse.dart';
import '../components/GetSubElementDetailsResponse.dart';
import '../model/getPhysicalInventoryResponse.dart';
import '../model/getPhysicalInventoryResponse.dart';
import '../model/getPhysicalInventoryResponse.dart';
import '../model/physicalCharacteristicsPostModel.dart';

import '../model/getChannelRiver_response.dart';

import '../model/identificationLocationPostModel.dart';
import '../model/identificationLocationResponse.dart';
import '../model/ChannelAndRiverPostModel.dart';

import '../model/subElementModel.dart';
import '../model/trafficandLoadPostModel.dart';
import '../providers/_provider.dart';
import'package:get/get_connect/http/src/response/response.dart';

import 'home_controller.dart';


class InventoryInspectionController extends GetxController {
  //TODO: Implement InventoryInspectionController
  ApiClient apiClient=ApiClient(appBaseUrl:"http://103.245.204.238:8098");
  InventortProvider _inventoryProvider = InventortProvider();
  final count = 0.obs;
  var selectTab = "Identification & Location".obs;
  var structureid =Get.find<StructureInventoryController>().structureId;
  var structureIdSaveData =Get.find<StructureInventorySaveDataController>().structureIdSaveData;
  var buttonVal=0.obs;

  var invNoForCompo =0.0.obs;


  //physical Inventory

  // var insp_strnoPhysical =" ".obs;
  // var inv_noPhysical =" ".obs;
  RxDouble sup_width = 0.0.obs;
  RxDouble sup_carri_width=0.0.obs;
  RxDouble sup_sidewalk_ls=0.0.obs;
  RxDouble sup_sidewalk_rs=0.0.obs;
  RxString sup_wearing_course =''.obs;
  RxDouble sup_bank_distance=0.0.obs;
  RxString sup_railing_types =''.obs;
  RxString sup_tie_hanger =''.obs;
  RxString sup_electricty_sur =''.obs;
  RxString sup_bracing =''.obs;
  RxDouble sup_light_posts_l=0.0.obs;
  RxDouble sup_light_posts_r=0.0.obs;
  RxString sub_abutment_end =''.obs;
  RxString sub_wing =''.obs;
  RxString sub_intermediate =''.obs;

  var spanSerialV=''.obs;
  var spanLengthV=''.obs;
  var spanSerial =TextEditingController();
  var spanLength =TextEditingController();

  var spanListForL = [].obs;
  var newList = [].obs;
  var spanCount =0.obs;
  var elementSerial =TextEditingController();
  var elementSerialV =''.obs;
  var elementName =''.obs;
  var spanSerialForElement =''.obs;

  var elementCount =0.obs;









  // var spanModel= SpanModel().obs ;
  // addSpan({required String length, required String serial}){
  //   spanModel.value =SpanModel(spanLength:spanLengthV.value ,spanSerial:spanSerialV.value );
  //   forSpanData.add(spanModel.value);
  //   spanCount.value =forSpanData.length;
  //   spanSerial.clear();
  //   spanLength.clear();
  //   //spanListForL.value.add(spanName.text);
  //
  // }

  // removeSpan(int index){
  //   forSpanData.removeAt(index);
  //   spanCount.value =forSpanData.length;
  // }

  // var elementModelObj=ElementModel().obs;
  // addElement(String eName,String eSerialNumber,String spanSeriaNo,String spanLength){
  //   elementModelObj.value =ElementModel(elementName: elementName.value,
  //     elementSerialNumber: elementSerial.text,
  //     spanSerialNumber: spanSerialForElement.value,
  //     spanLength: spanLengthV.value,
  //   );
  //   forElementData.add(elementModelObj.value);
  //   elementCount.value =forElementData.length;
  //   elementSerial.clear();
  // }
  //
  // removeElement(int index){
  //   forElementData.removeAt(index);
  //   elementCount.value =forElementData.length;
  // }







  //physical Post
  int insp_strnoPhysicalP =0;
  int inv_noPhysicalP =0;
  double sup_widthP =0;
  double sup_carri_widthP =0;
  double sup_sidewalk_lsP =0;
  double sup_sidewalk_rsP =0;
  double sup_bank_distanceP =0;
  double sup_light_posts_lP =0;
  double sup_light_posts_rP=0;
  String sup_electricty_surP ='';
  String sup_wearing_courseP='';
  String sup_railing_typesP='';
  String sup_tie_hangerP='';
  String sup_bracingP='';
  String sub_abutment_endP='';
  String sub_wingP='';
  String sub_intermediateP='';

  //Physical Characteristics
  RxBool physicalCharacteristicsButton =false.obs;
  var spanList =[].obs;
  //var csList =<CSListData>[].obs
  var inventoryElementList =<ElementList>[].obs;
  var wearingCourseList =<WearingCourse>[].obs;
  var wearingVal =''.obs;
  var typesOfRailingList =<TypesOfRailing>[].obs;
  var TypesOfRailingVal =''.obs;
  var electricitySourceList = <ElectricitySource>[].obs;
  var electricitySourceVal =''.obs;
  var tieHangerList =<Tieandhanger>[].obs;
  var TieandhangerVal =''.obs;
  var bracingList =<Bracing>[].obs;
  var bracingVal =''.obs;
  var abutmentEndWallList =<MaterialType>[].obs;
  var abutmentEndWallVal =''.obs;
  var subStructureWingWallList = <MaterialType>[].obs;
  var subStructureWingWallVal =''.obs;
  var SubStructurePierIntermediateWallList =<MaterialType>[].obs;
  var SubStructurePierIntermediateWallval =''.obs;
  var FoundationAbutmentList =<FoundationType>[].obs;
  var FoundationAbutmentVal =''.obs;
  var FoundationWingWallList =<FoundationType>[].obs;
  var FoundationWingWallVal =''.obs;
  var FoundationPierList =<FoundationType>[].obs;
  var FoundationPierVal =''.obs;
  var ElementCount =0.obs;





  //Channel/River Information


  var ChannelRiverInformation=[].obs;
  var ChannelRiverInformationButtonVal ="add".obs;
  RxBool press =false.obs;
  var sl_noChannelRiver =0.obs;
  RxInt inv_noChannelRiver = 0.obs;
  var cr_Name =''.obs;
  RxDouble cr_width =0.0.obs;
  var cr_FloodLevel =0.0.obs;
  var cr_ChannelType ="".obs;
  var  cr_Gepgraphic =" ".obs;
  var cr_FlowType ="".obs;
  var cr_Salinity ="".obs;
  var cr_Protection = 0.0.obs;

  var channelTypeList =<ChannelType>[].obs;
  var geographicList =<Geographic>[].obs;
  var flowTypeList =<FlowType>[].obs;
  var salinityList =<Salinity>[].obs;
  var channelProtectionList =<ChannelProtection>[].obs;



  //ForPost
  int sl_noChannelRiverP =0;
  int inv_noChannelRiverP = 0;
   String cr_nameP ='';
   int cr_protectionP =0;
   int cr_widthP =0;
   int cr_ChannelTypeP =0;
  int cr_floodLevelP =0;
  int cr_salinityP =0;
  int cr_geographicP =0;
  int cr_flowTypeP =0;
  // String channelRiverProtectionP ='';
  // String channelTypeP ='';
  // String flowTypeP ='';
  // String geographicP='';
  // String salinityP='';



   //Identification & Location
  RxBool identificationButtonVal =false.obs;
  var facilitiesCarriedList =<FacilitiesCarried>[].obs;
  var facilitiesCarried =''.obs;
  int identi_noIdentification =0;
  RxInt inv_noIdentification =0.obs;
  RxString chainage =''.obs;
  RxString longitude =''.obs;
  RxString latitude =''.obs;
  RxString altitude =''.obs;
  RxInt feature_intersected =0.obs;
  //ForPost
  RxInt identi_noIdentificationP =0.obs;
  int inv_noIdentificationP =0;
  String chainageP='';
  String longitudeP='';
  String latitudeP='';
  String altitudeP='';
  int featureIntersectedP=0;






  //TrafficAndLoad
  RxInt sl_noTraffic= 0.obs;
  RxInt inv_noTraffic=0.obs;
  RxBool TrafficAndLoad =false.obs;
  RxDouble tl_average_width =0.0.obs;
  RxDouble tl_design_load =0.0.obs;
  RxDouble tl_posted_vehicle =0.0.obs;
  RxDouble tl_assessed_vehicle =0.0.obs;
  //ForPost
  int sl_noTrafficP= 0;
  int inv_noTrafficP=0;
  double tlAverageWidth=0.0;
  double tlDesignLoad=0.0;
  double tlPostedVehicle=0.0;
  double tlAssessedVehicle=0.0;
  void apiCallWithId(){
    if(structureid.value==""){
      //getChannelRiver(structureIdSaveData.value);
     getIdentificationLocation(structureIdSaveData.value);
      getTrafficandLoad(structureIdSaveData.value);
      getPhysicalInventory(structureIdSaveData.value);
    }else if(structureid.value!=""){
      getChannelRiver(structureid.value);
      getIdentificationLocation(structureid.value);
     getTrafficandLoad(structureid.value);
     getPhysicalInventory(structureid.value);
    }
  }
  var sendData=[];
  Map<int, List> prepareData = Map<int, List>();
 var addCount =0.obs;
  var model =PhysicalCharacteristicsPostModel();


  var subElementList =<SubElementModel>[].obs;
  var subElementSerialTC =TextEditingController();
  var subElementSerial =0.obs;
  var subElementName =0.0.obs;
  late  SubElementModel subElement;
  var subElementCount =0.obs;
  var StrId=0.obs;

  void addSubElement(double name, int serial, int Str_Id){
    subElement =SubElementModel(sub_element_id: subElementName.value,sub_element_serial: subElementSerial.value,Str_Id: StrId.value);
    subElementList.value.add(subElement);
    subElementCount.value =subElementList.value.length;
    subElementSerialTC.clear();
  }
  void removeSubElement(int index){
    subElementList.value.removeAt(index);
    subElementCount.value =subElementList.value.length;

  }


  // void addData({required String eName,required String eSerial,required String spSerial, required String spLength,required int index}){
  //   addCount.value++;
  //   var aList=[];
  //   aList.add(eName);
  //   aList.add(eSerial);
  //   aList.add(spLength);
  //   aList.add(spSerial);
  //   var sendList=[];
  //   sendList.addAll(aList);
  //   prepareData[addCount.value]=sendList;
  //   sendData.addAll(prepareData.values);
  //   model.rbmPhyCharspanModels?[0].spanName=spSerial.toString();
  //   model.rbmPhyCharspanModels?[0].spanLength=spLength.toString();
  //   // model.rbmPhyCharspanModels?[0].invNo=65.0;
  //   // model.rbmPhyCharspanModels?[0].slNo=211.0;
  //   //
  //   // model.rbmPhyCharspanModels?[0].components?[0].elementSerial=int.parse(eSerial.toString());
  //   // model.rbmPhyCharspanModels?[0].components?[0].componentId=int.parse(eName.toString());
  //   print(prepareData);
  //   //rbmPhyCharspanModels[index].rbmPhyCharspanModels[index]
  //   //for post
  //   // print("eName${eName}");
  //   // print("eSerial${eSerial}");
  //   // print("spSerial${spSerial}");
  // }

  @override
  void onInit() {
    super.onInit();
    getPhysical();
    getChannelRiver(structureid.value);
    apiCallWithId();
    var stId ="";

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  void elementIncrement()=>ElementCount.value++;

  getPhysical(){
    _inventoryProvider.getPhysicalCharacteristics().then((response){
      Get.find<HomeController>().superElementList.value=response.result!.elementList!;
      inventoryElementList.value= response.result!.elementList!;
      wearingCourseList.value =response.result!.wearingCourse!;
      typesOfRailingList.value =response.result!.typesOfRailing!;
      electricitySourceList.value =response.result!.electricitySource!;
      tieHangerList.value =response.result!.tieandhanger!;
      bracingList.value =response.result!.bracing!;
      abutmentEndWallList.value =response.result!.materialType!;
      subStructureWingWallList.value=response.result!.materialType!;
      SubStructurePierIntermediateWallList.value=response.result!.materialType!;
      FoundationAbutmentList.value=response.result!.foundationType!;
      FoundationWingWallList.value=response.result!.foundationType!;
      FoundationPierList.value=response.result!.foundationType!;



    });
  }
  //GetPhysicalInventory
  var inspPhysical =0.obs;
  var inVpPhysical =0.obs;
  var invPhysicalForComponent=0.0;
  var spanInfo =GetPhysicalInventory().obs;
  getPhysicalInventory(String id) async{
    _inventoryProvider.getPhysicalInventory(id).then((response) async {
      spanInfo.value= response;
       sup_light_posts_l.value= response.result!.supLightPostsL!;
       sup_light_posts_r.value= response.result!.supLightPostsR!;
      //sub_abutment_end.value = response.result!.subAbutment!;
      //sub_wing.value = response.result!.subWing!;
      //sub_intermediate.value = response.result!.subIntermediate!;
      //insp_strnoPhysical.value =response.result!.inspStrno.toString();
      inspPhysical.value=response.result!.inspStrno!;
      //inv_noPhysical.value = response.result!.invNo.toString();
      inVpPhysical.value=response.result!.invNo!;
       sup_width.value =  response.result!.supWidth!;
       sup_carri_width.value= response.result!.supCarriWidth!;
       sup_sidewalk_ls.value= response.result!.supSidewalkLs!;
       sup_sidewalk_rs.value= response.result!.supSidewalkRs!;
       sup_wearing_course.value = response.result!.supWearingCourse!;
       sup_bank_distance.value= response.result!.supBankDistance!;
       sup_railing_types.value = response.result!.supRailingTypes!;
       sup_tie_hanger.value = response.result!.supTieHanger!;
       sup_electricty_sur.value = response.result!.supElectrictySur!;
        sub_abutment_end.value =response.result!.subAbutment!;
        sub_wing.value =response.result!.subWing!;
        sub_intermediate.value =response.result!.subIntermediate!;
      // RxString sub_abutment_end =''.obs;
      // RxString sub_wing =''.obs;
      // RxString sub_intermediate =''.obs;
        //Get.find<HomeController>().invForCompo.value=double.parse(response.result!.inspStrno.toString());
        Get.find<HomeController>().invForCompo.value=double.parse(response.result!.inspStrno!.toString());
        // spanInfo.value.result!
        //   .rbmPhyCharspanModels![0].invNo!.toDouble()!=null?spanInfo.value.result!
        //     .rbmPhyCharspanModels![0].invNo!.toDouble():0.0;

       // sup_bracing.value = response.result.s




       //insp_strnoPhysical.value = int.parse(response.result!.inspStrno!.toString());




    });
  }
  // var superElementDetailsModels =<GetRbmPhyCharspanModels>[].obs;
  // getRbmPhyCharspanModels(String id) async{
  //   _inventoryProvider.getRbmPhyCharspanModels(id).then((response) async {
  //     superElementDetailsModels =;
  //     print('superElementDetailsModels${superElementDetailsModels.length}');
  //   });
  // }
  //
  // var components =<GetComponents>[].obs;
  // getComponents(String id) async{
  //   _inventoryProvider.getComponents(id).then((response) async {
  //     components =response as RxList<GetComponents>;
  //     print("components${components.length}");
  //   });
  // }
  // var subElementDetailsModels =<GetSubElementDetailsModels>[].obs;
  // getSubElementDetailsModels(String id) async{
  //   _inventoryProvider.getSubElementDetailsModels(id).then((response) async {
  //     subElementDetailsModels =response as RxList<GetSubElementDetailsModels>;
  //     print("subElementDetailsModels${subElementDetailsModels.length}");
  //   });
  // }




  getChannelRiver(String id){
    _inventoryProvider.getChannelRiver(id).then((response){
      channelTypeList.value =response.result!.channelType!;
      geographicList.value =response.result!.geographic!;
      flowTypeList.value =response.result!.flowType!;
      salinityList.value =response.result!.salinity!;
      channelProtectionList.value =response.result!.channelProtection!;
      cr_Name.value= response.result!.channelAndRiverInfoModel !.crName!;
      cr_width.value= response.result!.channelAndRiverInfoModel!.crWidth!;
      cr_FloodLevel.value= response.result!.channelAndRiverInfoModel!.crFloodLevel!;
      cr_ChannelType.value= response.result!.channelAndRiverInfoModel!.channelType!;
      cr_Gepgraphic.value= response.result!.channelAndRiverInfoModel!.geographic!;
      cr_FlowType.value= response.result!.channelAndRiverInfoModel!.flowType!;
      cr_Salinity.value= response.result!.channelAndRiverInfoModel!.salinity!;
      cr_Protection.value= response.result!.channelAndRiverInfoModel!.crProtection!;
      sl_noChannelRiver.value = response.result!.channelAndRiverInfoModel!.slNo!;
      inv_noChannelRiver.value= response.result!.channelAndRiverInfoModel!.invNo!;
      channelTypeList.value =response.result!.channelType!;
      geographicList.value =response.result!.geographic!;
      flowTypeList.value =response.result!.flowType!;
      salinityList.value =response.result!.salinity!;
      channelProtectionList.value =response.result!.channelProtection!;


    });

  }



  getIdentificationLocation(String id){
    _inventoryProvider.getIdentifyLocation(id).then((response){
      facilitiesCarriedList.value= response.result!.facilitiesCarried!;

      chainage.value =response.result!.identificationAndLocationModel!.chainage!;
      longitude.value =response.result!.identificationAndLocationModel!.longitude!;
      latitude.value =response.result!.identificationAndLocationModel!.latitude!;
      altitude.value =response.result!.identificationAndLocationModel!.altitude!;
      feature_intersected.value =response.result!.identificationAndLocationModel!.featureIntersected!;
      identi_noIdentificationP.value =response.result!.identificationAndLocationModel!.identiNo!;
      inv_noIdentification.value =response.result!.identificationAndLocationModel!.invNo!;
    });
  }

  //getTrafficandLoad()
  getTrafficandLoad(String id){
    _inventoryProvider.getTrafficandLoad(id).then((response){
     tl_average_width.value =response.result!.tlAverageWidth!;
     tl_design_load.value =response.result!.tlDesignLoad!;
     tl_posted_vehicle.value =response.result!.tlPostedVehicle!;
     tl_assessed_vehicle.value =response.result!.tlAssessedVehicle!;
     sl_noTraffic.value= response.result!.slNo!;
      inv_noTraffic.value=response.result!.invNo!;
    });
  }




//postRural
//   void postRuralSurvey(
//       ) async {
//     var myUrl = "http://103.245.204.238:8098/api/Rubims/channel-and-river-info/save-channel-and-river-info";
//     print("api url ${myUrl}");
//     Dio _dio = Dio();
//
//     var params ={
//       "sl_no":0,
//       "inv_no":1621,
//       "cr_name":"Kopotakko",
//       "cr_width":605.6,
//       "cr_flood_level":65,
//       "cr_channel_type":1,
//       "cr_geographic":1,
//       "cr_flow_type":1,
//       "cr_salinity":1,
//       "cr_protection":1
//     };
//     try {
//       var response = await _dio
//           .post(
//           myUrl,
//           data: jsonEncode(params),  options: Options(
//         headers: {
//           'Content_type':'application/json; charset=UTF-8',
//           'Authorization':'Bearer ""'
//         },
//       )
//
//       );
//       if (response.statusCode == 200) {
//         var data = response.data;
//         // print(data);
//         // Get.offAllNamed(Routes.FRONTPAGE);
//
//      print(data);
//       }else if(response.statusCode == 404) {
//
//       }
//       else {
//
//
//       }
//     } on DioError catch (e) {
//       if (e.response != null) {
//         print(e.response?.data);
//         print(e.response?.headers);
//         print(e.response?.requestOptions);
//       } else {
//         // Something happened in setting up or sending the request that triggered an Error
//         print(e.requestOptions);
//         print(e.message);
//       }
//     }
//   }



  Future<void> postChannelRiver(ChannelAndRiverPostModel postChannelRiver) async {
    print(postChannelRiver.toJson());
    Response response=await apiClient.postData("/api/Rubims/channel-and-river-info/save-channel-and-river-info",postChannelRiver.toJson());
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      Get.snackbar("Result", "Successfully Posted");
      print("success post");
      print(response.body.toString());
      update();
    } else {
      print("post Failed");
      Get.snackbar("Result", "Post Failed");
    }
  }
//Rubims/insp-structure/update-inspection-structure?id=184
  Future<void> putChannelRiver(ChannelAndRiverPostModel postChannelRiver, int id) async {
    print(postChannelRiver.toJson());
    Response response=await apiClient.put("/api/Rubims/channel-and-river-info/update-channel-and-river-info?id=${id}",postChannelRiver.toJson());
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      print("success put");
      Get.snackbar("Result", "Successfully Updated");
      print(response.body.toString());
      update();
    } else {
      print("put Failed");
      Get.snackbar("Result", "Update Failed");
    }
  }
  Future<void> postIdentifyLocationData(IdentificationAndLocationPost identificationAndLocationPost) async {
    print(identificationAndLocationPost.toJson());
    Response response=await apiClient.postData("/api/Rubims/identification/save-identification-location",identificationAndLocationPost.toJson());
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      print("success post");
      print(response.body.toString());
      update();
    } else {
      print("post Failed");
    }
  }
  Future<void> putIdentifyLocationData(IdentificationAndLocationPost identificationAndLocationPost,int id) async {
    print(identificationAndLocationPost.toJson());
    Response response=await apiClient.put("/api/Rubims/identification/update-identification-location?id=${id}",identificationAndLocationPost.toJson());
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      print("success put");
      print(response.body.toString());
      update();
    } else {
      print("put Failed");
    }
  }

  Future<void> postTrafficandLoad(TrafficandLoadPostModel trafficandLoadPostModel) async {
    print(trafficandLoadPostModel.toJson());
    Response response=await apiClient.postData("/api/Rubims/traffic-loading-info/save-traffic-and-loading-info",trafficandLoadPostModel.toJson());
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      print("success post");
      print(response.body.toString());
      update();
    } else {
      print("post Failed");
    }
  }
  Future<void> putTrafficandLoad(TrafficandLoadPostModel trafficandLoadPostModel, int id) async {
    print(trafficandLoadPostModel.toJson());
    Response response=await apiClient.put("/api/Rubims/traffic-loading-info/update-traffic-and-loading-info?id=${id}",trafficandLoadPostModel.toJson());
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      print("success put");
      print(response.body.toString());
      update();
    } else {
      print("put Failed");
    }
  }
//PhysicalCharacteristicsPostModel
  Future<void> postPhysicalCharacteristics(PhysicalCharacteristicsPostModel physicalCharacteristicsPostModel) async {
    print(physicalCharacteristicsPostModel.toJson());
    Response response=await apiClient.postData("/api/Rubims/insp-structure/save-inspection-structure",physicalCharacteristicsPostModel.toJson());
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      print("success post");
      print(response.body.toString());
      update();
    } else {
      print("post Failed");
    }
  }
  Future<void> putPhysicalCharacteristics(PhysicalCharacteristicsPostModel physicalCharacteristicsPostModel,int id) async {
    print(physicalCharacteristicsPostModel.toJson());
    Response response=await apiClient.put("/api/Rubims/insp-structure/update-inspection-structure?id=${id}",physicalCharacteristicsPostModel.toJson());
    print(response.
    toString());
    if (response.statusCode == 200) {
      print("success put");
      print(response.body.toString());
      update();
    } else {
      print("put Failed");
    }
  }

  // Future<void> updateAlbum(String title) async {
  //   final response = await http.put(
  //     Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       'title': title,
  //     }),
  //   );
  //
  //   if (response.statusCode == 200) {
  //     // If the server did return a 200 OK response,
  //     // then parse the JSON.
  //     return Album.fromJson(jsonDecode(response.body));
  //   } else {
  //     // If the server did not return a 200 OK response,
  //     // then throw an exception.
  //     throw Exception('Failed to update album.');
  //   }
  // }


  //RbmPhyCharspanModels
  // Future<void> postRbmPhyCharspanModels(RbmPhyCharspanModels rbmPhyCharspanModels) async {
  //   print(rbmPhyCharspanModels.toJson());
  //   Response response=await apiClient.postData("/api/Rubims/insp-structure/save-inspection-structure",rbmPhyCharspanModels.toJson());
  //   print(response.statusCode.toString());
  //   if (response.statusCode == 200) {
  //     print("success post");
  //     print(response.body.toString());
  //     update();
  //   } else {
  //     print("post Failed");
  //   }
  // }

}

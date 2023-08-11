import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lged_inspection/app/data/api/ap_client.dart';



import '../../../model/inspection_post_model.dart';
import '../../structure_inventory/controllers/structure_inventory_controller.dart';
import '../../structure_inventory_Save_Data/controllers/structure_inventory_save_data_controller.dart';
import '../../user_profile/controllers/user_profile_controller.dart';
import '../model/getCSListResponse.dart';
import '../model/getDefectsResponse.dart';
import '../model/getElementsResponse.dart';
import '../model/inspection_local_model.dart';
import '../providers/_provider.dart';
import 'package:get/get.dart';

class ConditionalInspectionPageController extends GetxController {
  //TODO: Implement InspectionPageViewControllerController


   ApiClient apiClient=ApiClient(appBaseUrl:"http://103.245.204.238:8098");


  final pageController = PageController(initialPage: 0);
  var name ='ddg'.obs;
  var selectTab = "Super Structure".obs;
  RxString ratingVal = ''.obs;
  Provider _commonProvider = Provider();
  var selectBridze=''.obs;

  InspectionPost inspectionPost=InspectionPost();
  var counter =0;

  var elementsListSuper = <SuperList>[
  ].obs;
  var selectElementSuper='';
  var elementsListSub = <SubList>[
  ].obs;
  var selectElementSub='';
  var elementListNon =<NonList>[].obs;
  var selectElementNon='';
  var defectListsSuper =<SuperListDefects>[].obs;
  var selectDefectsSuper ='';
  var defectListsSub =<SubListDefects>[].obs;
  var selectDefectsSub ='';
  var defectListNon=<NonListDefects>[].obs;
  var selectDefectsNone='';
  var csList =<CSListData>[].obs;
  var selectCSList =''.obs;
  var selectSuperList =[].obs;
  var selectSubList =[].obs;
  var selectNonList =[].obs;
   InspObsIndviStrTmps indviStrTmps=InspObsIndviStrTmps();
   List<InspObsIndviStrTmps>? inspObsIndviStrTmpsList=[];
   List<InspObsIndviStrTmps>? subList=[];
   List<InspObsIndviStrTmps>? nonList=[];
  // Map<String,Map> superElementMap ={};
  // Map<String,List<dynamic>> superDefectMap ={};
  // Map<String,Map> subElementMap ={};
  // Map<String,List<dynamic>> subDefectMap ={};
  // Map<String,Map> nonElementMap ={};
  // Map<String,List<dynamic>> nonDefectMap ={};
  //List alldefectsList=[];
  var crackRatings ='';
  var concreteSpallingRat='';
  var exposedReberRat='';
  var damageRat='';

  var settelementRat='';
  var tilTingRat='';
  var movementRat='';
  var sourcingRat='';
  var selectElement='';
  List<Inspection> insList=[];


    var structureController=Get.lazyPut(() => StructureInventoryController());
    var structureInventorySaveDataController=Get.lazyPut(() => StructureInventorySaveDataController
      ());

  //id for get elements
  var structureId =Get.find<StructureInventoryController>().structureId;
   var structureIdSaveData =Get.find<StructureInventorySaveDataController>().structureIdSaveData;

  // void ass(){
  //
  //   getElements(Get.find<StructureInventoryController>().structureId.value);
  //   update();
  // }


  // var rifat= getElements(Get.find<StructureInventoryController>().structureId.value);

  //for Image
  var imagePath = "".obs;
  static XFile? pickedFile;
  final ImagePicker _picker = ImagePicker();
  var subStructureImageList =[].obs;
  var superStructureImageList =[].obs;
  var nonStructureImageList =[].obs;

   var superCompoName;
   var subCompoName;
   var nonCompoName;
   void apiCallwithId(){
     if(structureId.value==""){
       getElements(structureIdSaveData.value);
      getDefects(structureIdSaveData.value);
     }else if(structureId.value!=""){
      getElements(structureId.value);
      getDefects(structureId.value);

     }
   }

  //for subStracture image take
   Future<void> subStructureImage(ImageSource source,
      {BuildContext? context}) async {
    try {
      pickedFile = await _picker.pickImage(source: source);
      if(pickedFile != null) {
        print("${pickedFile?.name}");
        print("${pickedFile?.path}");
        imagePath.value = "${pickedFile?.path}";
        subStructureImageList.add(imagePath.value);
        update();
        print("PATH + ${imagePath.value}");
        print('After image........${subStructureImageList.length}');
      }
    } catch (e) {}
  }
  //for superStracture image take
  Future<void> superStructureImage(ImageSource source,
      {BuildContext? context}) async {
    try {
      pickedFile = await _picker.pickImage(source: source);
      if(pickedFile != null) {
        print("${pickedFile?.name}");
        print("${pickedFile?.path}");
        imagePath.value = "${pickedFile?.path}";
        superStructureImageList.add(imagePath.value);
        update();
        print("PATH + ${imagePath.value}");
        print('After image........${superStructureImageList.length}');
      }
    } catch (e) {}
  }
  //for nonStructure Image take
  Future<void> nonStructureImage(ImageSource source,
      {BuildContext? context}) async {
    try {
      pickedFile = await _picker.pickImage(source: source);
      if(pickedFile != null) {
        print("${pickedFile?.name}");
        print("${pickedFile?.path}");
        imagePath.value = "${pickedFile?.path}";
        nonStructureImageList.add(imagePath.value);
        update();
        print("PATH + ${imagePath.value}");
        print('After image........${nonStructureImageList.length}');
      }
    } catch (e) {}
  }


  //Safety Bridge Structural
   var activityList =['Repair/Rehabilitation/(Re/New Construction)',
     'Repair/Replacement/New Construction',
     'Cleaning',
     'Clearing',
   ];
  var repairRehabilitationReNewConstruction =['Embankment Slopes of Approach Roads',
    'Protective works of Abutment including approaches',
    'Pavement of approaches',
    'Wearing course',
    'Expansion joint/Nosing/Sealing',
    'Checker Plates, Nut- Bolts',
    'Wheel guard, Walkway',
  ].obs;
  var repairReplacementNewConstruction =['Rail Bar, Rail Post',
    'Guide Post, Traffic Sign, Electric Post',
    'Surface of Wing Wall and Abutment Wall',
    'Guide Post, Traffic Sign, Road Marking, Electric Post',
    'Railing, Rail Posts, Wheel guard',
    'Railing, Rail Posts, Wheel guard_upper',
  ].obs;

  var cleaning =['Railing, Rail Posts, Wheel guard',
    'Surface of Abutment, End wall Intermediate wall & Wing Wall, Weep Holes, Drain outlet',
    'Water flow of Slab/ Box/ P- Culverts'].obs;
  var clearing =['Obstruction of Water Ways'].obs;

  var justcheck=''.obs;

  var visual_observation =VisualObservation();

   RxInt count=0.obs ;

  var item= <Widget>[].obs;
  var counterList=[].obs;
  @override
  void onInit() {
    //getBridze();
    //print(structureId.value);
    getCsList();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() {
    // count.value=0;
    count.value++;
  }

//get elements list from provider to controller
   getElements(String structureId){
    _commonProvider.getElements(structureId).then((response){
      elementsListSuper.value= response.result!.superList!;
      elementsListSub.value= response.result!.subList!;
      elementListNon.value=response.result!.nonList!;

    });

  }
//get defects list from provider to controller
  void getDefects(String structureId){
    _commonProvider.getDefects(structureId).then((response) {
      defectListsSuper.value = response.defects!.superList!;
      defectListsSub.value =response.defects!.subList!;
      defectListNon.value =response.defects!.nonList!;

    });
  }
//get  cslist from provider to controller
  void getCsList(){
    _commonProvider.getCSList().then((response){
      print(RxStatus.success().toString());
      csList.value= response.cSList!;
    });
  }
  var weightData=[];
  // void mapToList(){
  //   var n;
  //    weightData =
  //        superElementMap.entries.map( (entry) => n(entry.key, entry.value)).toList();
  //         print(weightData);
  // }
  var number = 2 ;
  var valluk = 10;
  final _openBox =Hive.box('myBox');
  String compoNo ='';

  void write(){

   // Inspection inspection=Inspection(superElementMap, subElementMap,nonElementMap);
    // insList.add(inspection);
   // _openBox.put('key1',inspection );

  }

  //read
  void read(){
    Inspection inspection=_openBox.get('key1');
    var listSup =[];
    listSup.add(inspection.superMap);
    print("Local sup${listSup.length}");
    var listSub =[];
    listSub.add("Local Sub${inspection.subMap}");
    print(listSub.length);
    var listNon =[];
    listNon.add("${inspection.nonMap}");
    print(listNon.length);


  }

  //delete
  void delete(){
    _openBox.delete('key1');
  }
  Future<void> postData(InspectionPost inspectionPost) async {
   print(inspectionPost.toJson());
   print(inspectionPost.visualObservation?.toJson());
    Response response=await apiClient.postData("/api/Rubims/inspection/save-data",inspectionPost.toJson());
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      print("success post");
      print(response.body.toString());
      update();
    } else {
      print("post Failed");
    }
  }


}

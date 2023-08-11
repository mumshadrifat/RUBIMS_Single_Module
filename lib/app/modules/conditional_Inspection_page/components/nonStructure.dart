
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../model/inspection_post_model.dart';
import '../../../utils/colors.dart';
import '../controllers/conditional_inspection_page_controller.dart';
import '../model/getCSListResponse.dart';
import '../model/getElementsResponse.dart';

class NonStructure extends StatelessWidget {
   NonStructure({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ConditionalInspectionPageController controller;
   Map nonMap={};
   RxString pickedCompId=''.obs;

  @override
  Widget build(BuildContext context) {
    var n=InspObsIndviStrTmps();
    return Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 3,
              ),
              Text(
                'Observation of Individual Component',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 3,
              ),

              Obx(()=>Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Container(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.elementListNon.length,
                      itemBuilder:(BuildContext context, int index){
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.extraa_light,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),

                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.extraa_light,
                                        style: BorderStyle.solid,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                    ),
                                    child: ExpansionTile(
                                      onExpansionChanged: (value){

                                        controller.nonCompoName=controller.elementListNon[index].nAME.toString();
                                        controller.compoNo=controller.elementListNon[index].iD!.toString();
                                        print('selected Element :${controller.compoNo}');
                                        nonMap= {};
                                        n=InspObsIndviStrTmps();
                                        nonMap[controller.elementListNon[index].iD.toString()]=n;
                                        print("Id for non---${controller.elementListNon[index].iD}");

                                      },

                                      iconColor: AppColors.primary_color,
                                      textColor:  AppColors.primary_color,
                                      backgroundColor: Colors.white,
                                      // leading: Text('asdasdadsdas'),


                                      title: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(controller.elementListNon[index].nAME.toString(),style: TextStyle(fontSize: 12),),

                                        ],
                                      ),
                                      // trailing: IconButton(
                                      //   onPressed: () {
                                      //     controller.increment();
                                      //     controller.counterList.add(controller.count.value);
                                      //     print(controller.counterList);
                                      //   },
                                      //   icon: Icon(Icons.add),
                                      // ),
                                      children: <Widget>[
                                        ListView.builder(
                                            shrinkWrap: true,
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: controller.defectListNon.length,
                                            itemBuilder: (BuildContext context, int index) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, right: 10, bottom: 2, top: 2),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      //'${controller.defectList[index]}'
                                                        child: Obx(()=>ExpansionTile(
                                                          iconColor: AppColors.primary_color,
                                                          textColor:  AppColors.primary_color,
                                                          backgroundColor: Colors.white,
                                                          title: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text(controller.defectListNon[index].nAME!,style: TextStyle(fontSize: 12),),

                                                            ],
                                                          ),
                                                          children: <Widget>[
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  //'${controller.defectList[index]}'
                                                                  child: Obx(()=> Container(
                                                                    //width: width,
                                                                    // decoration: BoxDecoration(
                                                                    //   color: AppColors.extraa_light,
                                                                    //   borderRadius: BorderRadius.circular(Dimension.radius15),
                                                                    //   border: Border.all(color: Colors.black),
                                                                    // ),

                                                                    child: Padding(
                                                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                                                      child: DropdownButtonFormField(
                                                                        isExpanded: true,
                                                                        decoration:
                                                                        InputDecoration(border: InputBorder.none),

                                                                        //value:controller.bridzesList.isNotEmpty?controller.bridzesList[0] : null,
                                                                        hint: Padding(
                                                                          padding: const EdgeInsets.only(left: 12

                                                                          ),
                                                                          child: Text('Select Your Ratings',style:TextStyle(fontSize: 12,color:AppColors.primary_color,),),
                                                                        ),

                                                                        items: controller.csList
                                                                            .map((CSListData category) {
                                                                          return DropdownMenuItem(
                                                                              value: category,
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.only(left: 12),
                                                                                child: Text(category.text!,
                                                                                    style: TextStyle(fontSize: 12,color:AppColors.primary_color,),
                                                                                    overflow: TextOverflow.ellipsis),
                                                                              ));
                                                                        }).toList(),
                                                                        onChanged: (newValue) {
                                                                          newValue as CSListData ;
                                                                          controller.selectCSList.value = newValue.text.toString();
                                                                          print(controller.selectCSList.value.toString());

                                                                        if (index==0){
                                                                          n.dAMAGED=newValue.value!;
                                                                          n.cOMPID=controller.compoNo.toString();
                                                                          n.compoName=controller.nonCompoName;
                                                                            // controller.alldefectsList=[];
                                                                            //
                                                                            // controller.damageRat=newValue.text!;
                                                                            // controller.alldefectsList.add(controller.damageRat);
                                                                            // controller.nonDefectMap['damage']=[controller.alldefectsList];
                                                                            // print('damageRat:${controller.damageRat}');
                                                                          }
                                                                          else if (index==1){
                                                                          n.sETTLEMENT=newValue.value!;
                                                                          n.cOMPID=controller.compoNo.toString();
                                                                          n.compoName=controller.nonCompoName;
                                                                            // controller.alldefectsList=[];
                                                                            //
                                                                            // controller.settelementRat=newValue.text!;
                                                                            // controller.alldefectsList.add(controller.settelementRat);
                                                                            // controller.nonDefectMap['settelemen']=[controller.alldefectsList];
                                                                            // print('settelementrat:${controller.settelementRat}');
                                                                          }
                                                                          else if (index==2){
                                                                          n.mOVEMENT=newValue.value!;
                                                                          n.cOMPID=controller.compoNo.toString();
                                                                          n.compoName=controller.nonCompoName;
                                                                            // controller.alldefectsList=[];
                                                                            //
                                                                            // controller.movementRat=newValue.text!;
                                                                            // controller.alldefectsList.add(controller.movementRat);
                                                                            // controller.nonDefectMap['movement']=[controller.alldefectsList];
                                                                            // print('movementRat:${controller.movementRat}');
                                                                          }
                                                                        else if (index==3){
                                                                          n.sCOURING=newValue.value!;
                                                                          n.cOMPID=controller.compoNo.toString();
                                                                          n.compoName=controller.nonCompoName;
                                                                          // controller.alldefectsList=[];
                                                                          //
                                                                          // controller.sourcingRat=newValue.text!;
                                                                          // controller.alldefectsList.add(controller.sourcingRat);
                                                                          // controller.nonDefectMap['sourcing ']=[controller.alldefectsList];
                                                                          // print('sourcing:${controller.sourcingRat}');
                                                                        }
                                                                          //controller.nonElementMap[controller.selectElement]=controller.nonDefectMap;

                                                                          nonMap.keys.forEach((key){
                                                                            print(key);
                                                                            n.cOMPID=key;
                                                                            pickedCompId.value=n.cOMPID!;
                                                                          });

                                                                       //   print('AFTER__NonStructure${controller.nonElementMap}');


                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),

                                                                  ),
                                                                ),
                                                              ],
                                                            ),

                                                          ],
                                                        ),)
                                                    ),

                                                  ],
                                                ),
                                              );
                                            }),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                                          child: Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black,
                                                style: BorderStyle.solid,
                                                width: 1.0,

                                              ),

                                              borderRadius: BorderRadius.circular(5.0),
                                            ),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: 'Write your remarks'
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            ElevatedButton(onPressed: (){


                                                controller.inspObsIndviStrTmpsList!.add(n);


                                                print("Length:::${controller.inspObsIndviStrTmpsList!.length}");
                                              for(int i=0;i<controller.inspObsIndviStrTmpsList!.length;i++){

                                                print("non element${i+1}");
                                                print(controller.inspObsIndviStrTmpsList![i].cOMPID);
                                                print(controller.inspObsIndviStrTmpsList![i].dAMAGED);


                                              }

                                              // controller.postData();
                                            }, child: Text('Post')),
                                            Obx(
                                                  () => IconButton(
                                                onPressed: () {
                                                  controller.superStructureImage(
                                                    ImageSource.camera,
                                                    context: context,
                                                  );
                                                },
                                                icon: controller
                                                    .superStructureImageList
                                                    .length <=
                                                    index
                                                    ? Icon(Icons.camera_alt,
                                                    color: Colors.grey)
                                                    : Image.file(
                                                    File(controller
                                                        .superStructureImageList[
                                                    index]),
                                                    height: 100,
                                                    width: 100),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ),),
          ],
      ),
    ),
    );
  }
}

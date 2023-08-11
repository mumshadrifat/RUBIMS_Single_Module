import 'package:flutter/material.dart';
import"package:get/get.dart";
import '../../../data/database_helper/databse_helper.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimens.dart';
import '../../local_data_preview/controllers/local_data_preview_controller.dart';
import '../controllers/elements_details_page_controller.dart';
class ObservationOfIndividualComponentOfStructure extends StatelessWidget {
  RxInt len = 0.obs;
  LocalDataPreviewController localDataPreviewController =
  Get.find<LocalDataPreviewController>();

  testMethod() async {
    controller.q6list = await DataBaseHelper.instance
        .newQuery(localDataPreviewController.insId);
    len.value = controller.q6list.length;
    print(len);
  }
   ObservationOfIndividualComponentOfStructure({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ElementsDetailsPageController controller;

  @override
  Widget build(BuildContext context) {
    testMethod();
    return SingleChildScrollView(
      child: Column(
        children: [
          //AnimatedButton tab
          Container(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Obx(
                          () => Container(
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: len.value,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 4),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.extraa_light,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5)),
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
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                          ),
                                          child: ExpansionTile(
                                            trailing: Container(

                                              height: Dimension.height20 * 2,
                                              width: Dimension.width20 * 2,

                                              decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                    image: AssetImage("assets/image/logo.png"),
                                                    fit: BoxFit.scaleDown),

                                              ),

                                            ),
                                            iconColor:
                                            AppColors.primary_color,
                                            textColor:
                                            AppColors.primary_color,
                                            //backgroundColor: Colors.white,
                                            // leading: Text('asdasdadsdas'),

                                            title: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text(
                                                  controller.q6list[index]
                                                  ['compoName'],
                                                  style: TextStyle(
                                                      fontSize: 12),
                                                ),
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
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      10),
                                                  color:
                                                  AppColors.background,
                                                ),
                                                child: Column(
                                                  children: [
                                                    controller.q6list[index]
                                                    [
                                                    'CRACKS'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Crack'),
                                                              Text(controller.q6list[index]['CRACKS'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'CRACKS'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'SETTLEMENT'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Settelement'),
                                                              Text(controller.q6list[index]['SETTLEMENT'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'SETTLEMENT'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'TILTING'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Tilting'),
                                                              Text(controller.q6list[index]['TILTING'] ==1
                                                                  ? "Not appeared":controller.q6list[index]['TILTING'] ==2?"Poor":controller.q6list[index]['TILTING'] ==3?"Fair"
                                                                  : controller.q6list[index]
                                                              [
                                                              'TILTING'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'MISSECTION'] !=
                                                        null
                                                        ? Container(
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Missection'),
                                                              Text(controller.q6list[index]['MISSECTION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'MISSECTION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'MOVEMENT'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Movement'),
                                                              Text(controller.q6list[index]['MOVEMENT'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'MOVEMENT'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    ['REBAR'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Rebar'),
                                                              Text(controller.q6list[index]['REBAR'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'REBAR'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'SCOURING'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Sourcing'),
                                                              Text(controller.q6list[index]['SCOURING'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'SCOURING'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'OBSTRUCT'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Obstruct'),
                                                              Text(controller.q6list[index]['OBSTRUCT'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'OBSTRUCT'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'ABRASION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Abrasion'),
                                                              Text(controller.q6list[index]['ABRASION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'ABRASION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'DISTORTION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Distortion'),
                                                              Text(controller.q6list[index]['DISTORTION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'DISTORTION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'COLLISION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Collision'),
                                                              Text(controller.q6list[index]['COLLISION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'COLLISION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'DAMAGED'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Damaged'),
                                                              Text(controller.q6list[index]['DAMAGED'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'DAMAGED'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'EROSION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Erosion'),
                                                              Text(controller.q6list[index]['EROSION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'EROSION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'PATCHED'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Patched'),
                                                              Text(controller.q6list[index]['PATCHED'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'PATCHED'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'DEFORMATION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Deformation'),
                                                              Text(controller.q6list[index]['DEFORMATION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'DEFORMATION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    ' ACCUMULATION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Accumulation'),
                                                              Text(controller.q6list[index][' ACCUMULATION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              ' ACCUMULATION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'EFFLORESCENCE'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Efflorescence'),
                                                              Text(controller.q6list[index]['EFFLORESCENCE'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'EFFLORESCENCE'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'CRACK_OF_DECK'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'CrackOfDeck'),
                                                              Text(controller.q6list[index]['CRACK_OF_DECK'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'CRACK_OF_DECK'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'DELAMINATION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Delamination'),
                                                              Text(controller.q6list[index]['DELAMINATION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'DELAMINATION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'REMARK'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Remark'),
                                                              Text(controller.q6list[index]['REMARK'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'REMARK'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'SPALLING'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Spalling'),
                                                              Text(controller.q6list[index]['SPALLING'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'SPALLING'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'CRACKS'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Crack'),
                                                              Text(controller.q6list[index]['CRACKS'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'CRACKS'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'SETTLEMENT'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Settelement'),
                                                              Text(controller.q6list[index]['SETTLEMENT'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'SETTLEMENT'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'TILTING'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Tilting'),
                                                              Text(controller.q6list[index]['TILTING'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'TILTING'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'MISSECTION'] !=
                                                        null
                                                        ? Container(
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Missection'),
                                                              Text(controller.q6list[index]['MISSECTION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'MISSECTION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'MOVEMENT'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Movement'),
                                                              Text(controller.q6list[index]['MOVEMENT'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'MOVEMENT'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    ['REBAR'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Rebar'),
                                                              Text(controller.q6list[index]['REBAR'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'REBAR'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'SCOURING'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Sourcing'),
                                                              Text(controller.q6list[index]['SCOURING'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'SCOURING'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'OBSTRUCT'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Obstruct'),
                                                              Text(controller.q6list[index]['OBSTRUCT'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'OBSTRUCT'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'ABRASION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Abrasion'),
                                                              Text(controller.q6list[index]['ABRASION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'ABRASION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'DISTORTION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Distortion'),
                                                              Text(controller.q6list[index]['DISTORTION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'DISTORTION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'COLLISION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Collision'),
                                                              Text(controller.q6list[index]['COLLISION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'COLLISION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'DAMAGED'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Damaged'),
                                                              Text(controller.q6list[index]['DAMAGED'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'DAMAGED'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'EROSION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Erosion'),
                                                              Text(controller.q6list[index]['EROSION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'EROSION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'PATCHED'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Patched'),
                                                              Text(controller.q6list[index]['PATCHED'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'PATCHED'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'DEFORMATION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Deformation'),
                                                              Text(controller.q6list[index]['DEFORMATION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'DEFORMATION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    ' ACCUMULATION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Accumulation'),
                                                              Text(controller.q6list[index][' ACCUMULATION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              ' ACCUMULATION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'EFFLORESCENCE'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Efflorescence'),
                                                              Text(controller.q6list[index]['EFFLORESCENCE'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'EFFLORESCENCE'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'CRACK_OF_DECK'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'CrackOfDeck'),
                                                              Text(controller.q6list[index]['CRACK_OF_DECK'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'CRACK_OF_DECK'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'DELAMINATION'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Delamination'),
                                                              Text(controller.q6list[index]['DELAMINATION'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'DELAMINATION'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'REMARK'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Remark'),
                                                              Text(controller.q6list[index]['REMARK'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'REMARK'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container(),
                                                    controller.q6list[index]
                                                    [
                                                    'SPALLING'] !=
                                                        null
                                                        ? Container(
                                                      margin:
                                                      const EdgeInsets
                                                          .only(
                                                          bottom:
                                                          5,
                                                          left:
                                                          20,
                                                          right:
                                                          20),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: Colors
                                                            .white,
                                                      ),
                                                      child: ListTile(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  'Spalling'),
                                                              Text(controller.q6list[index]['SPALLING'] ==
                                                                  null
                                                                  ? "no data"
                                                                  : controller.q6list[index]
                                                              [
                                                              'SPALLING'])
                                                            ],
                                                          )),
                                                    )
                                                        : Container()
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
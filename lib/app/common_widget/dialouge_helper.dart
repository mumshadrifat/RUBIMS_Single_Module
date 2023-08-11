
import 'package:flutter/material.dart';
import 'package:lged_inspection/app/common_widget/dialouge_box_task_submit.dart';

import 'dialouge_box.dart';

class DialogHelper {

  static exit(context) => showDialog(context: context, builder: (context) => DialougeBox());
  static exitTask(context) => showDialog(context: context, builder: (context) => DialougeBoxTaskSbmt());
}
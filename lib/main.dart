import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/helper/dependency.dart' as dep;

import 'app/modules/conditional_Inspection_page/model/inspection_local_model.dart';
import 'app/routes/app_pages.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
//


import 'package:hive_flutter/hive_flutter.dart';

import 'app/utils/memory_management.dart';




Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  print("Handling a background message--------------: ${message.messageId}");
}

Future<void> main() async {

  WidgetsFlutterBinding().ensureVisualUpdate();
  WidgetsFlutterBinding.ensureInitialized();
  dep.init();
  SharedPreferencesRepository.init();




  // final document = await getApplicationDocumentsDirectory();
  await Hive.initFlutter();
  var createBox =await Hive.openBox('myBox');
  // Hive.registerAdapter(InspectionAdapter());

  await Firebase.initializeApp();

  //String? token = await FirebaseMessaging.instance.getToken();
  //print(token);

  // Set the background messaging handler early on, as a named top-level function
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await FirebaseMessaging.instance
      .requestPermission(alert: true, sound: true, badge: true);

  await FirebaseMessaging.instance.getInitialMessage();
  await FirebaseMessaging.onMessage.listen((mesage) {
    if (mesage != null) {
      print(mesage.notification?.title);
    } else {
      print("Null");
    }
  });
  await FirebaseMessaging.onMessageOpenedApp.listen((mesage) {
    if (mesage != null) {
      print(mesage.notification?.title);
    } else {
      print("Null");
    }
  });
  await FirebaseMessaging.instance.getInitialMessage().then((mesage) {
    if (mesage != null) {
      print(mesage.notification?.title);
    } else {
      print("Null");
    }
  });
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print('A new onMessageOpenedApp event was published!');
  });



  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

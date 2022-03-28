import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:vedic_flutter_app/resource/route.dart';

import 'app_module.dart';

void main() async{
  await Hive.initFlutter(); //init hive
  runApp(MyApp());

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
          GetMaterialApp(
            debugShowCheckedModeBanner: false,
            enableLog: true,
            title: 'Flutter Demo',
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,

              primarySwatch: Colors.blue,
            ),
            initialRoute: loginRoute,
            getPages: AppPages.pages,
          );
}



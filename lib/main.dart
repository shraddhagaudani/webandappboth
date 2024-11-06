import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webandappboth/responsive/sizeconfig.dart';
import 'package:webandappboth/routes/routes_name.dart';
import 'package:webandappboth/routes/routes_page.dart';

GlobalKey mainKey = GlobalKey();

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(mainKey.currentState?.context ?? context);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.partiespage,
      getPages: RoutesPage.pages,
    );
  }
}

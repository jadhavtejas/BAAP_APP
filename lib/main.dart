import 'package:baap_app/consts/AppColors.dart';
import 'package:baap_app/consts/AppString.dart';
import 'package:baap_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => GetMaterialApp(
        // routeInformationParser: Routes.routeInformationParser,
        // routerDelegate: _router.routerDelegate,
        // routeInformationProvider: _router.routeInformationProvider,
        title: AppString.apptitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldbackground,
          fontFamily: 'Avenir',
        ),
        initialRoute: Routes.login,
        getPages: Routes.routes,
      );
}

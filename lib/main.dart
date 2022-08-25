
import 'package:baap_app/consts/AppColors.dart';
import 'package:baap_app/views/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        routeInformationProvider: _router.routeInformationProvider,
        title: 'BAAP APP',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldbackground,
          fontFamily: 'Avenir',
        ),
        // home: HomePage(),
      );
  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      // GoRoute(
      //   path: '/topContainer',
      //   builder: (context, state) => const TopContainer(),
      // ),
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => HomePage(),
      // ),
    ],
  );
}

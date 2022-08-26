import 'package:baap_app/views/screens/Login/Login.dart';
import 'package:baap_app/views/widget/TopContainer.dart';
import 'package:get/get.dart';

class Routes {

  static const String login = "/login";
  static const String containertop = "/containertop";

  static final routes = [
    GetPage(
      name: login,
      page: () => const Login(),
    ),
    GetPage(
      name: containertop,
      page: () => const TopContainer(),
    ),
    
    // GoRoute(
    //   path: '/topContainer',
    //   builder: (context, state) => const TopContainer(),
    // ),
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => HomePage(),
    // ),
  ];
}

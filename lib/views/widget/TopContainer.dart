import 'package:baap_app/consts/AppColors.dart';
import 'package:baap_app/consts/AppImages.dart';
import 'package:baap_app/consts/AppString.dart';
import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            color: AppColors.containerbackgroundcolor,
          ),
          width: 300,
          height: 370,
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: Column(children: [
              // ignore: avoid_unnecessary_containers
              Container(
                  child: const Text(
                'The BAAP Company',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: const [
                    Text(
                      AppString.containerhello,
                      style: TextStyle(
                        fontSize: 35,
                        decoration: TextDecoration.none,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppString.containerhelloname,
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 26, top: 10),
                child: const TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.mic_none_outlined,
                      size: 25,
                    ),
                    border: OutlineInputBorder(),
                    hintText: AppString.containerinputhinttext,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                alignment: Alignment.centerLeft,
                child: const Text(
                  AppString.containerchooseservies,
                  style: TextStyle(
                      color: AppColors.containerchooseservice, fontSize: 16),
                ),
              ),

              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    ContainerEX(
                      containerbackground:
                          AppColors.listcontainerbackgroundcolor,
                      containerbackgroundshawdow:
                          AppColors.listcontainershowdow,
                      iconimage: AppImages.foodimage,
                      text1: AppString.listcontainernamefood,
                    ),
                    ContainerEX(
                      containerbackground:
                          AppColors.listcontainerbackgroundcolor,
                      containerbackgroundshawdow:
                          AppColors.listcontainershowdow,
                      iconimage: AppImages.salonimage,
                      text1: AppString.listcontainernamesalon,
                    ),
                    ContainerEX(
                      containerbackground:
                          AppColors.listcontainerbackgroundcolor,
                      containerbackgroundshawdow:
                          AppColors.listcontainershowdow,
                      iconimage: AppImages.rationimage,
                      text1: AppString.listcontainernameration,
                    ),
                    ContainerEX(
                      containerbackground:
                          AppColors.listcontainerbackgroundcolor,
                      containerbackgroundshawdow:
                          AppColors.listcontainershowdow,
                      iconimage: AppImages.pesticidesimage,
                      text1: AppString.listcontainernamepesticides,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppString.loginwith,
                style: TextStyle(fontSize: 16, color: AppColors.containerlogin),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                autofocus: false,
                style: TextStyle(fontSize: 21.0, color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF5E6088),
                ),
              ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: Padding(
              //         padding: const EdgeInsets.only(left: 25, top: 10),
              //         child: GestureDetector(
              //           onTap: () {
              //             // bool _isSelected = false;
              //             setState(() {
              //               _isSelected = !_isSelected;
              //             });
              //           },
              //           child: Row(
              //             children: [
              //               Container(
              //                 height: 25,
              //                 width: 25,
              //                 decoration: BoxDecoration(
              //                   color: _isSelected
              //                       ? Colors.blue
              //                       : Colors.transparent,
              //                   borderRadius: BorderRadius.circular(0),
              //                   border: _isSelected
              //                       ? null
              //                       : Border.all(
              //                           color: const Color(0xffD1D5F2),
              //                           width: 1.0,
              //                         ),
              //                 ),
              //                 child: _isSelected
              //                     ? const Icon(
              //                         Icons.check,
              //                         color: Colors.white,
              //                       )
              //                     : null,
              //               ),
              //               const Padding(
              //                 padding: EdgeInsets.only(left: 15),
              //                 child: Text(
              //                   'Same as Permanent Address',
              //                   style: TextStyle(
              //                     color: Color(0xff898EBC),
              //                     fontSize: 14,
              //                     fontFamily: 'BaiJamjureeB',
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        )
      ]),
    );
  }
}

class ContainerEX extends StatelessWidget {
  final String text1;
  final Color containerbackground;
  final Color containerbackgroundshawdow;
  final String iconimage;

  const ContainerEX({
    required this.containerbackground,
    required this.containerbackgroundshawdow,
    required this.iconimage,
    required this.text1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 7,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containerbackground,
        boxShadow: [
          BoxShadow(
            color: containerbackgroundshawdow,
            spreadRadius: 5,
            blurRadius: 0,
            offset: const Offset(2, 3),
          ),
        ],
      ),
      child: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Image.asset(iconimage),
          const SizedBox(
            height: 5,
          ),
          Text(
            text1,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      )),
    );
  }
}

// class TextWidget extends StatelessWidget {
//   final String value;
//   // final BuildContext context;

//   const TextWidget({
//     // this.context, {
//     required this.value,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       value,
//       // context,
//       style: const TextStyle(
//         fontSize: 35,
//         decoration: TextDecoration.none,
//         color: Colors.white,
//       ),
//     );
//   }
// }

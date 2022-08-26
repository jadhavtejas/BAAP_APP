import 'package:baap_app/consts/AppColors.dart';
import 'package:baap_app/consts/AppString.dart';
import 'package:baap_app/views/widget/TopContainer.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 400,
          child: TopContainer(),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5, left: 26, right: 26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppString.loginwith,
                style: TextStyle(fontSize: 16, color: AppColors.loginwith),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                autofocus: false,
                style: TextStyle(fontSize: 18.0, color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.textfieldbackground,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 27, top: 18),
                      child: GestureDetector(
                        onTap: () {
                          // setState(() {
                          //   _isSelected = !_isSelected;
                          // });
                        },
                        child: Row(
                          children: const [
                            // Container(
                            //   height: 25,
                            //   width: 25,
                            //   // decoration: BoxDecoration(
                            //   //   color: _isSelected
                            //   //       ? Colors.blue
                            //   //       : Colors.transparent,
                            //   //   borderRadius: BorderRadius.circular(0),
                            //   //   border: _isSelected
                            //   //       ? null
                            //   //       : Border.all(
                            //   //           color: const Color(0xffD1D5F2),
                            //   //           width: 1.0,
                            //   //         ),
                            //   // ),
                            //   // child: _isSelected
                            //   //     ? const Icon(
                            //   //         Icons.check,
                            //   //         color: Colors.white,
                            //   //       )
                            //   //     : null,
                            // ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                AppString.otponwhatapp,
                                style: TextStyle(
                                  color: AppColors.sendonwhatsapp,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Container(
                        child: RaisedButton(
                      onPressed: () {},
                      child: Text(AppString.sendotplogin),
                      textColor: Colors.white,
                      color: AppColors.btncolor,
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                    ))
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

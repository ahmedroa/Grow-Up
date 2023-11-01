import 'package:flutter/material.dart';
import 'package:grow_up/Auth/connectivity.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/Core/Route.dart';
import 'package:grow_up/layout/widjets/MainButton.dart';

class ChooseTheBank extends StatelessWidget {
  const ChooseTheBank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(MyImages.backgronud),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 60, right: 60),
                    child: Text(
                      'اختر البنك لسهولة اعداد التطبيق ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 32),
                    ),
                  ),
                  Image.asset(MyImages.bank),
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(MyImages.centralBank),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, right: 80),
                    child: MainButton(
                        text: 'التالي',
                        onTap: () {
                          navigateTo(context, const Connectivity());
                        }),
                  ),
                ],
              ))),
    );
  }
}

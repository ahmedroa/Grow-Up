// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/Core/Route.dart';
import 'package:grow_up/layout/widjets/MainButton.dart';
import 'package:grow_up/layout/widjets/OnBoardingPage.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MyImages.backgronud),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(MyImages.logo),
              const Text(
                'أهلا بك في',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
              const Text(
                'Grow Up',
                style: TextStyle(
                    color: MyClass.kPrimaryColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 26),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 80, right: 80),
                child: Align(
                  child: Text(
                    'الخيار الأفضل لرفع وزيادة الوعي المالي الخاص بك والادخار.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: MyClass.kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: PhysicalModel(
                  color: MyClass.kPrimaryColor,
                  elevation: 8,
                  shadowColor: MyClass.kPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                  child: MainButton(
                      text: 'يلا نبدأ !',
                      onTap: () {
                        navigateTo(context, const IntroductionScreens());
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

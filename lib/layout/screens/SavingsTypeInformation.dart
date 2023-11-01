import 'package:flutter/material.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/Core/Route.dart';
import 'package:grow_up/layout/screens/Portfolio.dart';
import 'package:grow_up/layout/widjets/MainButton.dart';
import 'package:grow_up/layout/widjets/buildTextField.dart';

class SavingsTypeInformation extends StatelessWidget {
  const SavingsTypeInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller1 = TextEditingController();
    final controller2 = TextEditingController();
    final controller3 = TextEditingController();
    final controller4 = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MyImages.backgronud),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: const Color.fromARGB(255, 187, 207, 187),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                MyImages.house,
                                width: 80,
                                height: 80,
                              ),
                              const Text('منزل العمر'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text('ٌقيمة الهدف بالريال',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: MyClass.kPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                  )),
                      buildTextField(
                        controller: controller1,
                        hintText: '11,000',
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 15),
                      Text('ٌقيمة الهدف بالريال',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: MyClass.kPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                  )),
                      buildTextField(
                        controller: controller2,
                        hintText: '6000',
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 15),
                      Text('ٌقيمة الهدف بالريال',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: MyClass.kPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                  )),
                      buildTextField(
                        controller: controller3,
                        hintText: '3000',
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 15),
                      Text('ٌقيمة الهدف بالريال',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: MyClass.kPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                  )),
                      buildTextField(
                        controller: controller4,
                        hintText: '1000',
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, right: 80),
                        child: MainButton(
                          text: 'التالي',
                          onTap: () {
                            navigateTo(context, const PortfolioT());
                          },
                          int: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

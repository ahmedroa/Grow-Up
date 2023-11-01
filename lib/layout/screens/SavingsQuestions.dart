import 'package:flutter/material.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/Core/Route.dart';
import 'package:grow_up/layout/screens/SavingsCalc.dart';
import 'package:grow_up/layout/widjets/Back.dart';
import 'package:grow_up/layout/widjets/MainButton.dart';
import 'package:grow_up/layout/widjets/buildTextField.dart';

class SavingsQuestions extends StatefulWidget {
  const SavingsQuestions({super.key});

  @override
  State<SavingsQuestions> createState() => _SavingsQuestionsState();
}

class _SavingsQuestionsState extends State<SavingsQuestions> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();
  final controller5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MyImages.background2),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const GoBack(),
                        Text(
                          'الحساب التفاضلي',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('كم دخلك الشهري ؟ ',
                              style: Theme.of(context).textTheme.titleLarge!),
                          buildTextField(
                            controller: controller1,
                            hintText: '11,000',
                            keyboardType: TextInputType.number,
                          ),
                          const SizedBox(height: 15),
                          Text('مجموع مصروفاتك الأساسية',
                              style: Theme.of(context).textTheme.titleLarge!),
                          buildTextField(
                            controller: controller2,
                            hintText: '6000',
                            keyboardType: TextInputType.number,
                          ),
                          const SizedBox(height: 15),
                          Text('مجموع مصروفاتك الفرعية ؟ ',
                              style: Theme.of(context).textTheme.titleLarge!),
                          buildTextField(
                            controller: controller3,
                            hintText: '3000',
                            keyboardType: TextInputType.number,
                          ),
                          const SizedBox(height: 15),
                          Text('كم من يذهب يذهب لسداد الديون ؟',
                              style: Theme.of(context).textTheme.titleLarge!),
                          buildTextField(
                            controller: controller4,
                            hintText: '1000',
                            keyboardType: TextInputType.number,
                          ),
                          const SizedBox(height: 15),
                          Text("كم ادخارك الشهرى ؟",
                              style: Theme.of(context).textTheme.titleLarge!),
                          buildTextField(
                            controller: controller5,
                            hintText: '1000',
                            keyboardType: TextInputType.number,
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.only(left: 80, right: 80),
                            child: MainButton(
                              text: 'التالي',
                              onTap: () {
                                navigateTo(context, const SavingsCalculator());
                              },
                              int: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/Core/Route.dart';
import 'package:grow_up/layout/screens/SavingsTypeInformation.dart';

class TypeOptions extends StatelessWidget {
  const TypeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text(
              'هناك العديد من',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'الخيارات أختر واحدة',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: InkWell(
                      onTap: () {
                        navigateTo(context, const SavingsTypeInformation());
                      },
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
                    width: 20,
                  ),
                  Container(
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: InkWell(
                      onTap: () {
                        navigateTo(context, const SavingsTypeInformation());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            MyImages.car,
                            width: 80,
                            height: 80,
                          ),
                          const Text('شراء سيارة'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: InkWell(
                      onTap: () {
                        navigateTo(context, const SavingsTypeInformation());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            MyImages.ta,
                            width: 80,
                            height: 80,
                          ),
                          const Text('رحلة قادمة'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: InkWell(
                      onTap: () {
                        navigateTo(context, const SavingsTypeInformation());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            MyImages.fa,
                            width: 80,
                            height: 80,
                          ),
                          const Text('فعالية قادمة'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: InkWell(
                      onTap: () {
                        navigateTo(context, const SavingsTypeInformation());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            MyImages.goal,
                            width: 80,
                            height: 80,
                          ),
                          const Text('هدف مختلف'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: InkWell(
                      onTap: () {
                        navigateTo(context, const SavingsTypeInformation());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            MyImages.dollar,
                            width: 80,
                            height: 80,
                          ),
                          const Text('الادخار للمستقبل'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

buildItem(
        {context,
        required String title,
        required String img,
        Function()? onTap}) =>
    Container(
      height: 120,
      width: 150,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 187, 207, 187),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: InkWell(
        onTap: () {
          navigateTo(context, const SavingsTypeInformation());
        },
        child: Column(
          children: [
            Text(title),
            Image.asset(
              img,
              width: 80,
              height: 80,
            )
          ],
        ),
      ),
    );

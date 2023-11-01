import 'package:flutter/material.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/Core/MyImg.dart';

class SavingsCalculator extends StatelessWidget {
  const SavingsCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Image.asset(MyImages.pesrson),
            )
          ],
          title: Text('Grow up',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'الحاسبة الادخاريه',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: MyClass.kPrimaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'نتائج الحاسبة',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: Colors.grey[800],
                            fontSize: 24,
                          ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Text('الدخل',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          color: MyClass.kPrimaryColor,
                                          fontWeight: FontWeight.w700,
                                        )),
                                Text('1.000',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Text('الفرق',
                                    style:
                                        Theme.of(context).textTheme.titleLarge),
                                Text('11.000',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Text('المصاريف',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w700,
                                        )),
                                Text('10.000',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(MyImages.char),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Text(
                            'الوضع الحالي',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  color: const Color(0xff878787),
                                  fontSize: 24,
                                ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'الوضع المثالي',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  color: MyClass.kPrimaryColor,
                                  fontSize: 24,
                                ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    buildItem(
                      context: context,
                      title: 'مصروفاتك الأساسية',
                      int: '3000',
                      intt: '6000',
                    ),
                    const SizedBox(height: 15),
                    buildItem(
                      context: context,
                      title: 'مصروفاتك الفرعية',
                      int: '3000',
                      intt: '3300',
                    ),
                    const SizedBox(height: 15),
                    buildItem(
                      context: context,
                      title: 'ادخارك الفرعي',
                      int: '3000',
                      intt: '2300',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

buildItem({
  context,
  required String title,
  required String int,
  required String intt,
}) =>
    Row(
      children: [
        Expanded(
          child: Text(title, style: Theme.of(context).textTheme.titleMedium),
        ),
        Expanded(
            child: Container(
          decoration: const BoxDecoration(
            color: Color(0xffF4F4F4),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(int, style: Theme.of(context).textTheme.titleLarge),
          ),
        )),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: Container(
          color: const Color(0xffE5FFEB),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(intt, style: Theme.of(context).textTheme.titleLarge),
          ),
        )),
      ],
    );

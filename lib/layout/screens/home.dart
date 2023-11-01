import 'package:flutter/material.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/Core/MyIcons.dart';
import 'package:grow_up/Core/MyImg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   leading: Image.asset(MyImages.pesrson),
        //   title: Text('Grow up',
        //       style: Theme.of(context)
        //           .textTheme
        //           .titleLarge!
        //           .copyWith(fontWeight: FontWeight.bold)),
        //   centerTitle: true,
        // ),
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(MyImages.card),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'الاشتراكات',
                    style: Theme.of(context).textTheme.titleLarge!,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(MyImages.doc)
                ],
              ),
              Row(
                children: [
                  buildElement(img: MyIcons.yad, title: 'التطبيقات'),
                  buildElement(img: MyIcons.health, title: 'الاتصالات'),
                  buildElement(img: MyIcons.health, title: 'صحي'),
                  buildElement(img: MyIcons.school, title: 'تعليمي'),
                ],
              ),
              Row(
                children: [
                  Text('مصاريف التطبيقات',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Text('الكل', style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              buildItem(
                  context: context,
                  text1: 'youtube',
                  text2: 'Next Payment',
                  img: MyImages.youtube,
                  date: '13/04',
                  amountOfwithdrawal: '1.00'),
              const SizedBox(
                height: 20,
              ),
              buildItem(
                  context: context,
                  text1: 'paypal',
                  text2: 'Next Payment',
                  img: MyImages.paypal,
                  date: '13/04',
                  amountOfwithdrawal: '1.00'),
              const SizedBox(
                height: 20,
              ),
              buildItem(
                  context: context,
                  text1: 'linked in',
                  text2: 'Next Payment',
                  img: MyImages.linked,
                  date: '13/04',
                  amountOfwithdrawal: '1.00'),
              const SizedBox(
                height: 20,
              ),
              buildItem(
                  context: context,
                  text1: 'linked in',
                  text2: 'Next Payment',
                  img: MyImages.linked,
                  date: '13/04',
                  amountOfwithdrawal: '1.00'),
            ],
          ),
        ),
      ],
    ));
  }
}

buildElement({
  required String img,
  required String title,
}) =>
    Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(img),
                ],
              ),
            ),
          ),
          Text(title),
        ],
      ),
    ));

buildItem({
  context,
  required String text1,
  required String text2,
  required String date,
  required String img,
  required String amountOfwithdrawal,
}) =>
    Container(
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('\$ $amountOfwithdrawal',
                  style: Theme.of(context).textTheme.titleMedium!),
              const SizedBox(
                width: 10,
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(text1, style: Theme.of(context).textTheme.titleMedium!),
                  Row(
                    children: [
                      Text(' $text2 : ',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: const Color(0xffA4A9AE))),
                      Text(date,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: const Color(0xff456EFE))),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 15),
              Image.asset(img),
            ],
          ),
        ));

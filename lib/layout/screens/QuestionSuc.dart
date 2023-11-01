import 'package:flutter/material.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/Core/Route.dart';
import 'package:grow_up/layout/screens/SavingsQuestions.dart';
import 'package:grow_up/layout/widjets/Back.dart';
import 'package:grow_up/layout/widjets/MainButton.dart';

class QuestionSuc extends StatelessWidget {
  const QuestionSuc({super.key});

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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const GoBack(),
              Text(
                'الحساب التفاضلي',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'لإعلامك بأفضل',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 36),
              ),
              Text(
                'خطه !',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ادخاريه لك, ',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              Text(
                'يجب علينا',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 36),
              ),
            ],
          ),
          Text(
            'أن نطرح لك بعض ',
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 36),
          ),
          Text(
            'الاسئلة.',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: MainButton(
              text: 'تمام يلاااا',
              onTap: () {
                navigateTo(context, const SavingsQuestions());
              },
              int: 30,
            ),
          ),
        ],
      ),
    )));
  }
}

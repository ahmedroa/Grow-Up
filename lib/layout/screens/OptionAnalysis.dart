import 'package:flutter/material.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/Core/Route.dart';
import 'package:grow_up/layout/screens/QuestionSuc.dart';
import 'package:grow_up/layout/widjets/MainButton.dart';

class OpstionAnalysis extends StatelessWidget {
  const OpstionAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'الحاسبة الادخاريه',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: MyClass.kPrimaryColor, fontWeight: FontWeight.w600),
              ),
              Text(
                'بسهولة بإمكانك معرفة أفضل قيمة مناسبة للادخار ورسم خطة مالية لك',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(),
              ),
              Text(
                'لديك خيارين',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xffD6EAD2),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'الحساب بقاعدة ',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          const Spacer(),
                          Text(
                            '20   30   50   ',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ],
                      ),
                      Text(
                        'بسهولة بإمكانك معرفة القيمة المناسبة للادخار من خلال تحقيق قاعدة المشهورة',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: const Color(0xff878787)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xffD6EAD2),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'الحساب التفصيلي ',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          const Spacer(),
                          Text(
                            'التعمق',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ],
                      ),
                      Text(
                        "التعمق بالتفصيل لمعرفة النسبة الحقيقية للادخار بناءا على مصروفاتك و دخلك",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: const Color(0xff878787)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 80,
                  right: 80,
                ),
                child: MainButton(
                  text: 'التالي',
                  onTap: () {
                    navigateTo(context, const QuestionSuc());
                  },
                  int: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

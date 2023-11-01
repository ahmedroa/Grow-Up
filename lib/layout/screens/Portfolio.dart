import 'package:flutter/material.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/Core/Route.dart';
import 'package:grow_up/layout/screens/TypeOptions.dart';
import 'package:grow_up/layout/widjets/MainButton.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

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
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' المحافظ الادخارية',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: MyClass.kPrimaryColor,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  ' بإمكانك تعيين أكثر من محفظة للادخار وتحدد مختلف أنواع  الاهداف',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(MyImages.portfolio)),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'ليس لديك محفظه ادخارية ؟ ',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 26),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: MainButton(
                    text: 'إنشاء المحفظه',
                    onTap: () {
                      navigateTo(context, const TypeOptions());
                    },
                    int: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PortfolioT extends StatelessWidget {
  const PortfolioT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.background2),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' المحافظ الادخارية',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: MyClass.kPrimaryColor,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  ' بإمكانك تعيين أكثر من محفظة للادخار وتحدد مختلف أنواع  الاهداف',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 70,
                ),
                Image.asset(MyImages.end),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: MainButton(
                    text: 'إنشاء المحفظه',
                    onTap: () {
                      navigateTo(context, const TypeOptions());
                    },
                    int: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

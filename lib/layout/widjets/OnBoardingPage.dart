import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grow_up/Auth/SignUp.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/Core/Route.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreens extends StatelessWidget {
  const IntroductionScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: [
            PageViewModel(
              title: 'الوعي المالي',
              body:
                  'عرض تفاصيل الدفع والاشتراكات الشهرية والفواتير والالتزامات لمعرفة أين المال يذهب؟',
              image: buildImage(MyImages.sartone),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'حاسبة الادخار',
              body:
                  'يمكن ل Grow up حساب نفقاتك بسهولة وإعلامك بأفضل خطة مالية لك إما باستخدام قاعدة 50 30 20 أو بالحساب التفصيلي',
              image: buildImage(MyImages.sartTwo),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'المحافظ الادخارية',
              body:
                  'عرض تفاصيل الدفع والاشتراكات الشهرية والفواتير والالتزامات لمعرفة أين المال يذهب؟',
              image: buildImage(MyImages.sartThree),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
          ],
          onDone: () {
            if (kDebugMode) {
              print("Done clicked");
              navigateTo(context, const SignUp());
            }
          },
          //ClampingScrollPhysics prevent the scroll offset from exceeding the bounds of the content.
          scrollPhysics: const ClampingScrollPhysics(),
          showDoneButton: true,
          showNextButton: true,
          showSkipButton: true,
          // isBottomSafeArea: true,
          skip: const Text("تخطي",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: MyClass.kPrimaryColor,
              )),
          next: const Icon(
            Icons.forward,
            color: MyClass.kPrimaryColor,
          ),
          done: const Text("دخول ",
              style: TextStyle(fontWeight: FontWeight.w600)),
          dotsDecorator: getDotsDecorator()),
    );
  }

  //widget to add the image on screen
  Widget buildImage(String imagePath) {
    return Center(
        child: Image.asset(
      imagePath,
      width: 450,
      height: 200,
    ));
  }

  //method to customise the page style
  PageDecoration getPageDecoration() {
    return const PageDecoration(
      imagePadding: EdgeInsets.only(top: 120),
      pageColor: Colors.white,
      bodyPadding: EdgeInsets.only(top: 8, left: 20, right: 20),
      titlePadding: EdgeInsets.only(top: 50),
      bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 15),
    );
  }

  //method to customize the dots style
  DotsDecorator getDotsDecorator() {
    return const DotsDecorator(
      spacing: EdgeInsets.symmetric(horizontal: 2),
      activeColor: MyClass.kPrimaryColor,
      color: Colors.grey,
      activeSize: Size(12, 5),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    );
  }
}

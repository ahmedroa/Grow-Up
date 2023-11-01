import 'package:flutter/material.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/layout/widjets/MainButton.dart';

class Successful extends StatelessWidget {
  const Successful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MyImages.backgronud),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(MyImages.scuss),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'مبروك !',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 26),
            ),
            const Text(
              'تم ربط حسابك ',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MainButton(text: 'ممتاز!', onTap: () {}),
            ),
          ],
        ),
      ),
    ));
  }
}

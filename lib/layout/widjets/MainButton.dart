import 'package:flutter/material.dart';
import 'package:grow_up/Core/MColors.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool hasCircularBorder;
  final double width;
  final double int;



  

  const MainButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.hasCircularBorder = false,
      this.width = double.infinity,
      this.int = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(int),
            color: MyClass.kPrimaryColor,
          ),
          child: MaterialButton(
            onPressed: onTap,
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ));
  }
}

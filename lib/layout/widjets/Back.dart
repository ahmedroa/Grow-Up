import 'package:flutter/material.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/Core/MyImg.dart';

class GoBack extends StatelessWidget {
  const GoBack({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.arrow_back,
              color: MyClass.kPrimaryColor,
            )),
      ),
    );
  }
}

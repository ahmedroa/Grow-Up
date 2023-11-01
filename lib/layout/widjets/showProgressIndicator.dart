import 'package:flutter/material.dart';
import 'package:grow_up/Core/MColors.dart';

void showProgressIndicator(context) {
  showDialog(
    barrierColor: Colors.white.withOpacity(0),
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return const Center(
          child: CircularProgressIndicator(
        color: MyClass.kPrimaryColor,
      ));
    },
  );
}

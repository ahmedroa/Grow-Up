// ignore_for_file: file_names

import 'package:flutter/material.dart';

buildTextField({
  required TextEditingController controller,
  required String hintText,
  required TextInputType keyboardType,
  String? errorText,
  bool isDense = false,
}) =>
    TextFormField(
      obscureText: isDense,
      validator: (value) {
        if (value!.isEmpty) {
          return 'لا يمكن ترك الحقل فارغ ';
        }

        return null;
      },
      controller: controller,
      decoration: InputDecoration(
        // label: Text(
        //   hintText,
        // )
        hintText: hintText,
      ),
      // textAlign: TextAlign.center,
      keyboardType: keyboardType,
    );

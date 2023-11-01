// ignore_for_file: avoid_print, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grow_up/Models/UserModel.dart';
import 'package:grow_up/layout/widjets/message.dart';
import 'package:meta/meta.dart';

part 'growup_state.dart';

class GrowupCubit extends Cubit<GrowupState> {
  GrowupCubit() : super(GrowupInitial());
  static GrowupCubit get(context) => BlocProvider.of(context);
  // signin({required String email, required String passpprd}) async {
  //   try {
  //     emit(Loading());
  //     await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(email: email, password: passpprd);
  //     emit(LoginSuccessful());
  //   } on FirebaseAuthException catch (exception) {
  //     emit(LogoutFailed());
  //     if (exception.code == 'user-not-found') {
  //     } else if (exception.code == 'wrong-password') {}
  //   }
  // }

  signin({context, required String email, required String passpprd}) async {
    try {
      emit(Loading());
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: passpprd);
      emit(LoginSuccessful());
      message(message: 'تم تسجيبل الدخول بنجاح ', color: Colors.grey.shade800);
    } on FirebaseAuthException catch (exception) {
      emit(LogoutFailed(error: exception.code));
      if (exception.code == 'user-not-found') {
        const snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: Text('لم يتم العثور على مستخدم لهذا البريد الإلكتروني'),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        message(
            message: 'لم يتم العثور على مستخدم لهذا البريد الإلكتروني',
            color: Colors.red);
      } else if (exception.code == 'wrong-password') {
        message(
            message: 'البريد الاكتروني وكلمة المرور غير متطابقان',
            color: Colors.red);
      }
    }
  }

  signUp(
      {required String email,
      required String password,
      required String name,
      required String phone}) async {
    emit(Loading());
    try {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: phone)
          .then((userData) {
        UserModel model = UserModel(
            uId: userData.user!.uid, email: email, name: name, phone: phone);
        FirebaseFirestore.instance
            .collection('user')
            .doc(userData.user!.uid)
            .set(model.toJson());
        // submitPhoneNumber(phone);

        emit(LoginSuccessful());
      });
    } catch (e) {}
  }
}

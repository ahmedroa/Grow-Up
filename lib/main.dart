import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grow_up/Auth/ChooseTheBank.dart';
import 'package:grow_up/Auth/SignUp.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/cubit/growup_cubit.dart';
import 'package:grow_up/layout/screens/Portfolio.dart';
import 'package:grow_up/layout/screens/SavingsCalc.dart';
import 'package:grow_up/layout/screens/Setting.dart';
import 'package:grow_up/layout/screens/StartPage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:grow_up/layout/screens/OptionAnalysis.dart';
import 'package:grow_up/layout/screens/TypeOptions.dart';
import 'package:grow_up/layout/screens/home.dart';
import 'package:grow_up/layout/widjets/BottomNavbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => GrowupCubit(),
      child: BlocConsumer<GrowupCubit, GrowupState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            localizationsDelegates: const [
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [Locale("ar", "AE")],
            locale: const Locale("ar", "AE"),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: MyClass.kPrimaryColor),
              ),
              colorScheme:
                  ColorScheme.fromSeed(seedColor: MyClass.kPrimaryColor),
              useMaterial3: true,
            ),
            home: const Start(),
          );
        },
      ),
    );
  }
}

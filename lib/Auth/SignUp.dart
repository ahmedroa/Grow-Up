import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/Core/Route.dart';
import 'package:grow_up/Core/enum%20.dart';
import 'package:grow_up/Auth/ChooseTheBank.dart';
import 'package:grow_up/cubit/growup_cubit.dart';
import 'package:grow_up/layout/screens/home.dart';
import 'package:grow_up/layout/widjets/Back.dart';
import 'package:grow_up/layout/widjets/BottomNavbar.dart';
import 'package:grow_up/layout/widjets/MainButton.dart';
import 'package:grow_up/layout/widjets/buildTextField.dart';
import 'package:grow_up/layout/widjets/showProgressIndicator.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  final formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  final bool validate = false;
  AuthFormType _authType = AuthFormType.login;
  bool isVisible = true;
  bool isClicked = false;
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
                image: AssetImage(MyImages.backgronud),
                fit: BoxFit.cover,
              ),
            ),
            child: BlocConsumer<GrowupCubit, GrowupState>(
              listener: (context, state) {
                if (state is Loading) {
                  showProgressIndicator(context);
                }
                if (state is LoginSuccessful) {
                  Navigator.of(context).pop();
                  navigateAndFinish(context, const BottomNavigation());
                }
                if (state is LogoutFailed) {
                  Navigator.of(context).pop();
                  if (state.error == 'user-not-found') {
                  } else if (state.error == 'wrong-password') {}
                }
              },
              builder: (context, state) {
                return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: ListView(
                      children: [
                        Center(
                          child: Form(
                            key: formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  _authType == AuthFormType.login
                                      ? 'تسجيل الدخول  '
                                      : 'تسجيل ',
                                  style: const TextStyle(
                                      color: MyClass.kPrimaryColor,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 30),
                                ),
                                const SizedBox(height: 40.0),
                                if (_authType == AuthFormType.register)
                                  Text('الاسم',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                if (_authType == AuthFormType.register)
                                  buildTextField(
                                      controller: _nameController,
                                      hintText: 'Ahmed',
                                      keyboardType: TextInputType.name),
                                if (_authType == AuthFormType.register)
                                  const SizedBox(height: 30.0),
                                Text('البريد الإلكتروني',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium),
                                buildTextField(
                                    controller: _emailController,
                                    hintText: 'Ahmed@gmail.com',
                                    keyboardType: TextInputType.emailAddress),
                                const SizedBox(height: 30.0),
                                Text(' كلمة المرور',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium),
                                if (_authType == AuthFormType.login)
                                  TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'لا يمكن ترك الحقل فارغ ';
                                      }

                                      return null;
                                    },
                                    controller: _passwordController,
                                    decoration: InputDecoration(
                                      isDense: false,
                                      label: const Text(
                                        'كلمة المرور',
                                      ),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isVisible = !isVisible;
                                          });
                                        },
                                        icon: Icon(
                                          isVisible
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),
                                      ),
                                    ),
                                    obscureText: isVisible,
                                    keyboardType: TextInputType.visiblePassword,
                                  ),
                                if (_authType == AuthFormType.register)
                                  buildTextField(
                                      controller: _passwordController,
                                      hintText: '************',
                                      keyboardType:
                                          TextInputType.visiblePassword),
                                if (_authType == AuthFormType.login)
                                  const SizedBox(height: 30.0),
                                if (_authType == AuthFormType.login)
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: InkWell(
                                      child: Text('هل نسيت كلمة المرور ؟',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium),
                                    ),
                                  ),
                                if (_authType == AuthFormType.register)
                                  const SizedBox(height: 30.0),
                                if (_authType == AuthFormType.register)
                                  Text('رقم الجوال',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                if (_authType == AuthFormType.register)
                                  buildTextField(
                                      controller: _phoneController,
                                      hintText: '0512345678',
                                      keyboardType: TextInputType.phone),
                                const SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 80, right: 80),
                                  child: PhysicalModel(
                                    color: MyClass.kPrimaryColor,
                                    elevation: 8,
                                    shadowColor: MyClass.kPrimaryColor,
                                    borderRadius: BorderRadius.circular(20),
                                    child: MainButton(
                                        text: _authType == AuthFormType.login
                                            ? 'تسجيل الدخول'
                                            : 'تسجيل',
                                        onTap: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            if (_authType ==
                                                AuthFormType.login) {
                                              GrowupCubit.get(context).signin(
                                                  email: _emailController.text,
                                                  passpprd:
                                                      _passwordController.text);
                                            }
                                            if (_authType ==
                                                AuthFormType.register) {
                                              GrowupCubit.get(context).signUp(
                                                  name: _nameController.text,
                                                  email: _emailController.text,
                                                  password:
                                                      _passwordController.text,
                                                  phone: _phoneController.text);
                                            }
                                          }
                                        }),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    child: Text(
                                      _authType == AuthFormType.login
                                          ? 'ليس لديك حساب : تسجيل'
                                          : 'هل لديك حساب ؟ سجل دخولك',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onTap: () {
                                      formKey.currentState!.reset();
                                      setState(() {
                                        if (_authType == AuthFormType.login) {
                                          _authType = AuthFormType.register;
                                        } else {
                                          _authType = AuthFormType.login;
                                        }
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ));
              },
            )),
      ),
    );
  }
}

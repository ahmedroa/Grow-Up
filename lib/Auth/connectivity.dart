import 'package:flutter/material.dart';
import 'package:grow_up/Auth/successful.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/Core/Route.dart';
import 'package:grow_up/layout/screens/home.dart';
import 'package:grow_up/layout/widjets/Back.dart';
import 'package:grow_up/layout/widjets/BottomNavbar.dart';
import 'package:grow_up/layout/widjets/MainButton.dart';
import 'package:grow_up/layout/widjets/buildTextField.dart';
import 'package:intl/intl.dart';

class Connectivity extends StatelessWidget {
  const Connectivity({super.key});

  @override
  Widget build(BuildContext context) {
    final dateController = TextEditingController();
    final namberController = TextEditingController();
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MyImages.background2),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Text('الربط مع الأول ساب',
                style: Theme.of(context).textTheme.displaySmall!.copyWith()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  MyImages.logo,
                  height: 70,
                ),
                Image.asset(
                  MyImages.sab,
                  height: 70,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[10],
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('التحقق من حسابك',
                          style: Theme.of(context).textTheme.titleMedium!),
                      Text('لربط حسابك البنكي يتطلب توثيق حسابم من أبشر',
                          style: Theme.of(context).textTheme.titleMedium!),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('رقم الهوية الوطنية',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!),
                                buildTextField(
                                    controller: namberController,
                                    hintText: '1234567890',
                                    keyboardType: TextInputType.emailAddress),
                                const SizedBox(height: 30),
                                Text('رقم الهوية الوطنية',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!),
                                defaultTextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Date Must be not empty';
                                    }
                                    return null;
                                  },
                                  controller: dateController,
                                  keyboaredType: TextInputType.datetime,
                                  label: 'تاريخ الاداء',
                                  prefix: Icons.calendar_month,
                                  ontap: () async {
                                    await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate:
                                                DateTime.parse('2030-01-01'))
                                        .then((value) => {
                                              dateController.text =
                                                  DateFormat.yMMMd()
                                                      .format(value!),
                                            });
                                  },
                                ),
                                const SizedBox(height: 30),
                                MainButton(
                                  text: 'ارسال رمز التحقق',
                                  onTap: () {
                                    navigateAndFinish(
                                        context, const Successful());
                                  },
                                  int: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            PhysicalModel(
              color: MyClass.kPrimaryColor,
              elevation: 8,
              shadowColor: MyClass.kPrimaryColor,
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                MyImages.centralBank,
              ),
            ),
            const SizedBox(
              height: 70,
            )
          ],
        ),
      )),
    );
  }
}

Widget defaultTextFormField({
  var onChanged,
  TextEditingController? controller,
  required TextInputType keyboaredType,
  required IconData prefix,
  var initialValue,
  required String label,
  required FormFieldValidator validator,
  Function? onSubmitted,
  GestureTapCallback? ontap,
  IconData? suffix,
  bool? obsecure = false,
}) {
  return TextFormField(
      onChanged: onChanged,
      initialValue: initialValue,
      controller: controller,
      keyboardType: keyboaredType,
      obscureText: obsecure!,
      maxLines: 1,
      enableSuggestions: true,
      onFieldSubmitted: (s) {
        onSubmitted!();
      },
      onTap: ontap,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: Icon(prefix),
        suffixIcon: Icon(suffix),
        labelText: label,
        // border: const OutlineInputBorder(
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(20),
        //   ),
        // ),
      ));
}

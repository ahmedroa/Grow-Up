import 'package:flutter/material.dart';
import 'package:grow_up/Core/MColors.dart';
import 'package:grow_up/Core/MyImg.dart';
import 'package:grow_up/layout/screens/home.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Image.asset(MyImages.pesrson),
      //   title: Text('Grow up',
      //       style: Theme.of(context)
      //           .textTheme
      //           .titleLarge!
      //           .copyWith(fontWeight: FontWeight.bold)),
      //   centerTitle: true,
      // ),
      body: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text('مساعدة',
              //     style: Theme.of(context)
              //         .textTheme
              //         .displaySmall!
              //         .copyWith(color: MyClass.kPrimaryColor)),
              bildItem(
                  context: context, title: 'الأسئلة الشائعة', icon: Icons.help),
              const Divider(),
              bildItem(
                  context: context, title: 'الدعم الفني', icon: Icons.call),
              const Divider(),
              bildItem(context: context, title: 'اللغه', icon: Icons.language),
              const Divider(),
              bildItem(
                  context: context, title: 'سياسة الخصوصية', icon: Icons.lock),
              const Divider(),
              bildItem(
                  context: context, title: ' تسجيل الخروج', icon: Icons.logout),
            ],
          ),
        ),
      ),
    );
  }
}

bildItem({
  context,
  required String title,
  required IconData icon,
}) =>
    Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: MyClass.kPrimaryColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(title, style: Theme.of(context).textTheme.titleLarge!),
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_app/helpers/appcolors.dart';
import 'package:qr_app/models/category.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color themeColor;

  MainAppBar({this.themeColor = AppColors.MAIN_COLOR});

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: const IconThemeData(color: AppColors.MAIN_COLOR),
      title: const Text(
        "Food Safari",
        style: TextStyle(
            color: AppColors.MAIN_COLOR,
            fontSize: 12,
            fontWeight: FontWeight.bold),
      ),
      actions: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: Stack(children: [
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      CupertinoIcons.shopping_cart,
                      size: 25,
                    )),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 3, bottom: 3, left: 5, right: 5),
                    decoration: BoxDecoration(
                        color: AppColors.MAIN_COLOR,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "3",
                      style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(right: 10, top: 10, bottom: 5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.MAIN_COLOR),
                  borderRadius: BorderRadius.circular(30)),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/fist.png',
                  // width: 70,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

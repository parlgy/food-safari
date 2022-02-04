import 'package:flutter/material.dart';
import 'package:qr_app/helpers/appcolors.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({Key? key, required this.goToPage, required this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => goToPage));
    });

    return Scaffold(
      body: Container(
        color: AppColors.MAIN_COLOR,
        child: const Center(
            child: Icon(
          Icons.fastfood,
          color: Colors.white,
          size: 100,
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:qr_app/helpers/utils.dart';
import 'package:qr_app/pages/categorylistpage.dart';
import 'package:qr_app/pages/homepage.dart';
// import 'package:qr_app/models/subcategory.dart';
// import 'package:qr_app/pages/detailspage.dart';
// import 'package:qr_app/pages/onboardingpage.dart';
import 'package:qr_app/pages/selectedcategorypage.dart';
// import 'package:qr_app/pages/categorylistpage.dart';
import 'package:qr_app/pages/splash_page.dart';
import 'package:qr_app/pages/welcome_page.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Comfortaa'),
      home: SplashPage(
        duration: 3,
        goToPage: WelcomePage(),
      )
      // home: SelectedCategoryPage(
      //   selectedCategory: Utils.getMockedCategories()[0],
      // ),
      // home: OnboardingPage(),
      // home: DetailsPage(
      //   subCategory: Utils.getMockedCategories()[0].subCategories![0],
      // ),
      // home: CategoryListPage()
      // home: HomePage()
      ));
}

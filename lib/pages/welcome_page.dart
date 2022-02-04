import 'package:flutter/material.dart';
import 'package:qr_app/helpers/appcolors.dart';
import 'package:qr_app/pages/categorylistpage.dart';
import 'package:qr_app/pages/onboardingpage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
                child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                'assets/images/image7.jpeg',
                fit: BoxFit.cover,
              ),
            )),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 180,
                        height: 180,
                        alignment: Alignment.center,
                        color: AppColors.MAIN_COLOR,
                        child: const Icon(
                          Icons.fastfood,
                          color: Colors.white,
                          size: 130,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    "Food Safari",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Instant Food, \n for Instant Hunger",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                          highlightColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OnboardingPage()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: const Text(
                              "Get Started",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.MAIN_COLOR,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                border: Border.all(
                                    color: AppColors.MAIN_COLOR, width: 4)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

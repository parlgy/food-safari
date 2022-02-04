import 'package:flutter/material.dart';
import 'package:qr_app/helpers/appcolors.dart';
import 'package:qr_app/helpers/utils.dart';
import 'package:qr_app/models/onboardingcontent.dart';
import 'package:qr_app/pages/categorylistpage.dart';
import 'package:qr_app/widgets/mainappbar.dart';
import 'package:qr_app/widgets/themebutton.dart';

class OnboardingPage extends StatefulWidget {
  // OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<OnboardingContent> _content = Utils.getOnboarding();

  int pageIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(),
        body: Container(
          child: Column(children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (int page) {
                  setState(() {
                    pageIndex = page;
                  });
                },
                children: List.generate(
                    _content.length,
                    (index) => Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(
                            bottom: 20, right: 10, left: 10, top: 40),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.MAIN_COLOR.withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: Offset.zero)
                            ]),
                        child: Column(children: [
                          Expanded(
                              child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.fastfood,
                                  color: AppColors.MAIN_COLOR,
                                  size: 70,
                                ),
                              ),
                              Image.asset(
                                  'assets/images/${_content[index].img}.png'),
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                _content[index].message,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: AppColors.MAIN_COLOR,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          )),
                          Visibility(
                            visible: index == _content.length - 1,
                            child: ThemeButton(
                                label: 'Get Started',
                                color: AppColors.DARKER_GREEN,
                                highlight: AppColors.DARKER_GREEN,
                                icon: Icon(Icons.fastfood),
                                onclick: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryListPage()));
                                }),
                          )
                        ]))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  _content.length,
                  (index) => GestureDetector(
                        onTap: () {
                          _controller.animateTo(
                              MediaQuery.of(context).size.width * index,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: AppColors.MAIN_COLOR,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 6,
                                  color: pageIndex == index
                                      ? Color(0xFFC1E09E)
                                      : Theme.of(context).canvasColor)),
                        ),
                      )),
            ),
            const SizedBox(
              height: 20,
            ),
            ThemeButton(
              onclick: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryListPage()));
              },
              icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
              label: 'Skip',
            ),
          ]),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:qr_app/helpers/utils.dart';
import 'package:qr_app/models/category.dart';
import 'package:qr_app/pages/selectedcategorypage.dart';
import 'package:qr_app/widgets/categorybottombar.dart';
import 'package:qr_app/widgets/categorycard.dart';
import 'package:qr_app/widgets/mainappbar.dart';

class CategoryListPage extends StatelessWidget {
  // CategoryListPage({Key? key}) : super(key: key);

  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: MainAppBar(),
        body: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
                    child: Text(
                      "Select Category",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 100, top: 20),
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return CategoryCard(
                          category: categories[index],
                          onCardClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectedCategoryPage(
                                          selectedCategory: categories[index],
                                        )));
                          });
                    },
                  ))
                ],
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset.zero)
                    ]),
                    child: const CategoryBottomBar(),
                  ))
            ],
          ),
        ));
  }
}

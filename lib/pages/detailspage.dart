import 'package:flutter/material.dart';
import 'package:qr_app/helpers/appcolors.dart';
import 'package:qr_app/helpers/utils.dart';
import 'package:qr_app/models/category.dart';
import 'package:qr_app/models/categorypart.dart';
// import 'package:qr_app/models/categorypart.dart';
import 'package:qr_app/models/subcategory.dart';
import 'package:qr_app/widgets/mainappbar.dart';
import 'package:qr_app/widgets/themebutton.dart';
import 'package:qr_app/widgets/unitpricewidget.dart';

class DetailsPage extends StatefulWidget {
  int amount = 0;
  double price = 15;
  double cost = 0.0;

  Category subCategory;
  DetailsPage({
    Key? key,
    required this.subCategory,
  }) : super(key: key);

  List<Category> categories = Utils.getMockedCategories();

  @override
  DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(50)),
            child: Stack(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/' +
                            widget.subCategory.imgName +
                            '.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.transparent,
                        ],
                      ))),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.subCategory.name,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: widget.subCategory.color,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  widget.subCategory.description,
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          // Icon(Icons.food_bank_rounded,
                          //     size: 50, color: widget.subCategory.color),
                          Container(
                            margin: const EdgeInsets.only(top: 40),
                            padding: const EdgeInsets.only(
                                top: 15, left: 15, right: 15, bottom: 15),
                            child: Row(children: const [
                              Icon(Icons.star, size: 20, color: Colors.yellow),
                              Icon(Icons.star, size: 20, color: Colors.yellow),
                              Icon(Icons.star, size: 20, color: Colors.yellow),
                              Icon(Icons.star, size: 20, color: Colors.yellow),
                              Icon(Icons.star, size: 20, color: Colors.grey),
                            ]),
                          )
                        ]),
                  ),
                ),
                MainAppBar(
                    // themeColor: Colors.white,
                    ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Text("Here are other options"),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            //TODO: change the selected state of each part 
                            setState(() {
                              widget.categories.forEach((Category category) {
                                category.isSelected =
                                    widget.categories[index] == category;
                              });
                            });
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10),
                                height: 150,
                                width: 120,
                                decoration: BoxDecoration(
                                    border: widget.categories[index].isSelected
                                        ? Border.all(
                                            color: widget.subCategory.color,
                                            width: 7)
                                        : null,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/' +
                                            widget.categories[index].imgName +
                                            '.jpeg'),
                                        fit: BoxFit.cover),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 10,
                                          offset: Offset.zero)
                                    ]),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: Text(widget.categories[index].name,
                                      style: TextStyle(
                                          color: widget.subCategory.color)))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  UnitPriceWidget(),
                  ThemeButton(
                      label: "Add to cart",
                      icon: Icon(Icons.shopping_cart, color: Colors.white),
                      onclick: () {}),
                  ThemeButton(
                    label: "Location",
                    icon: Icon(Icons.location_pin, color: Colors.white),
                    onclick: () {},
                    color: AppColors.DARK_GREEN,
                    highlight: AppColors.DARKER_GREEN,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

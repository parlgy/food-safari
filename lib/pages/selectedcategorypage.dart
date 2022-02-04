// ignore_for_file: avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors,

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_app/models/category.dart';
import 'package:qr_app/models/subcategory.dart';
import 'package:qr_app/pages/detailspage.dart';
import 'package:qr_app/widgets/mainappbar.dart';

class SelectedCategoryPage extends StatelessWidget {
  Category selectedCategory;

  SelectedCategoryPage({required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.fastfood,
                      size: 30,
                      color: selectedCategory.color,
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text(
                        selectedCategory.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: selectedCategory.color,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Expanded(child: Container()),

                //serch icon
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                // Container(
                //   padding: const EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       color: Colors.grey.shade200,
                //       borderRadius: BorderRadius.circular(10)),
                //   child: const Icon(
                //     CupertinoIcons.search,
                //     size: 20,
                //   ),
                // )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300.0,
                  childAspectRatio: 3 / 3,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                // crossAxisCount: 2,
                children: List.generate(selectedCategory.subCategories!.length,
                    (index) {
                  return GestureDetector(
                    onTap: () {
                      // ignore: todo
                      // TODO: Navigate to Details Page
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                  subCategory:
                                      selectedCategory.subCategories![index])));
                    },
                    child: Container(
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      color: Colors.black12.withOpacity(0.3),
                                      offset: const Offset(0, 3)),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/' +
                                      selectedCategory
                                          .subCategories![index].imgName +
                                      '.jpeg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            top: 0,
                            child: Container(
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
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
                            bottom: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 5, right: 5, top: 3, bottom: 3),
                                decoration: BoxDecoration(
                                    color: selectedCategory
                                        .subCategories![index].color,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  selectedCategory
                                      .subCategories![index].description,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            // right: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  selectedCategory.subCategories![index].name,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 5,
                            bottom: 5,
                            child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: const [
                                    Icon(CupertinoIcons.star_fill,
                                        color: Colors.yellow, size: 10),
                                    Icon(CupertinoIcons.star_fill,
                                        color: Colors.yellow, size: 10),
                                    Icon(CupertinoIcons.star_fill,
                                        color: Colors.yellow, size: 10),
                                    Icon(CupertinoIcons.star_fill,
                                        color: Colors.grey, size: 10),
                                    Icon(CupertinoIcons.star_fill,
                                        color: Colors.grey, size: 10),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    // ),
                  );
                })),
          ))
        ],
      )),
    );
  }
}

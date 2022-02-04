import 'package:flutter/material.dart';

import 'package:qr_app/models/category.dart';

class CategoryCard extends StatelessWidget {
  Category category;

  Function onCardClick;

  CategoryCard({Key? key, required this.category, required this.onCardClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCardClick();
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        height: 150,
        // width: 100,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/' + category.imgName + '.jpeg',
                  fit: BoxFit.cover,
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
                      borderRadius: BorderRadius.circular(15),
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
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(
                      Icons.fastfood,
                      color: category.color,
                      size: 40,
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Text(
                          category.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}

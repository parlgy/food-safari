import 'package:flutter/material.dart';
import 'package:qr_app/models/category.dart';
import 'package:qr_app/models/categorypart.dart';
import 'package:qr_app/models/subcategory.dart';

class CategoryListParts extends StatefulWidget {
  // CategoryListPage({Key? key}) : super(key: key);
  SubCategory subCategory;

  CategoryListParts({required this.subCategory});

  @override
  _CategoryListPartsState createState() => _CategoryListPartsState();
}

class _CategoryListPartsState extends State<CategoryListParts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Text("Here are other options"),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.subCategory.parts!.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  //TODO: change the selected state of each part
                  setState(() {
                    widget.subCategory.parts!.forEach((CategoryPart part) {
                      part.isSelected =
                          widget.subCategory.parts![index] == part;
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
                          border: widget.subCategory.parts![index].isSelected
                              ? Border.all(
                                  color: widget.subCategory.color, width: 7)
                              : null,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/' +
                                  widget.subCategory.parts![index].imgName +
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
                        child: Text(widget.subCategory.parts![index].name,
                            style: TextStyle(color: widget.subCategory.color)))
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

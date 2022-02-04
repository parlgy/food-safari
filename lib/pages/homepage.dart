import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qr_app/helpers/appcolors.dart';
import 'package:qr_app/helpers/utils.dart';
import 'package:qr_app/models/hotel_list.dart';
import 'package:qr_app/models/townlist.dart';
import 'package:qr_app/widgets/mainappbar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HotelList> hotels = Utils.getHotelList();
  List<TownList> towns = Utils.getTownList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.SEEDS,
        appBar: MainAppBar(),
        body: ListView(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.only(top: 50, left: 20),
                child: Text(
                  "Find out the best\nplace for you",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(13)),
                  child: Row(
                    children: const [
                      Icon(
                        CupertinoIcons.search,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Find your place')
                    ],
                  ),
                ),
              ),
              Container(
                  height: 70,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: hotels.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        return Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              top: 20,
                              right: 10,
                            ),
                            child: Text(towns[index].name),
                          ),
                          const SizedBox(height: 5),
                          const Icon(
                            Icons.circle_rounded,
                            size: 10,
                          ),
                          // Icon(Icons()
                        ]);
                      })),
            ])
          ],
        ));
  }
}

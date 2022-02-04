import 'package:flutter/material.dart';
import 'package:qr_app/helpers/appcolors.dart';

class UnitPriceWidget extends StatefulWidget {
  // UnitPriceWidget({Key? key}) : super(key: key);
  int amount = 0;
  double price = 1150;
  double cost = 0.0;

  @override
  _UnitPriceWidgetState createState() => _UnitPriceWidgetState();
}

class _UnitPriceWidgetState extends State<UnitPriceWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text.rich(TextSpan(children: [
            TextSpan(text: 'Items: '),
            TextSpan(
              text: 'Order',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '(Max: 20)', style: TextStyle(fontSize: 12))
          ])),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset.zero),
              ]),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: widget.amount < 20
                      ? () {
                          //increment
                          setState(() {
                            widget.amount++;
                            widget.cost = widget.price * widget.amount;
                          });
                        }
                      : null,
                  child: const Icon(
                    Icons.add_circle_outline,
                    size: 50,
                    color: AppColors.MEATS,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: widget.amount.toString(),
                          style: const TextStyle(fontSize: 40),
                        ),
                        const TextSpan(
                            text: ' items', style: TextStyle(fontSize: 20))
                      ])),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: widget.amount > 0
                      ? () {
                          //decrement
                          setState(() {
                            widget.amount--;
                            widget.cost = widget.price * widget.amount;
                          });
                        }
                      : null,
                  child: const Icon(
                    Icons.remove_circle_outline,
                    size: 50,
                    color: Colors.grey,
                  ),
                )
              ]),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: 'Price '),
                  TextSpan(
                      text: '\$${widget.cost}',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ]),
              ),
              Text(
                '\$${widget.cost}',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}

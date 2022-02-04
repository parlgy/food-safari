import 'package:flutter/material.dart';
import 'package:qr_app/helpers/appcolors.dart';

class CategoryBottomBar extends StatelessWidget {
  const CategoryBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              ClipOval(
                child: Material(
                  child: IconButton(
                    icon: const Icon(
                      Icons.home,
                      color: AppColors.MAIN_COLOR,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Home",
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Material(
                  child: IconButton(
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: AppColors.MAIN_COLOR,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Cart",
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Material(
                  child: IconButton(
                    icon: const Icon(
                      Icons.pin_drop,
                      color: AppColors.MAIN_COLOR,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Location",
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Material(
                  child: IconButton(
                    icon: const Icon(
                      Icons.settings,
                      color: AppColors.MAIN_COLOR,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Settings",
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
        ],
      ),
    );
  }
}

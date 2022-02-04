import 'package:flutter/material.dart';
import 'package:qr_app/helpers/appcolors.dart';
import 'package:qr_app/models/category.dart';
import 'package:qr_app/models/categorypart.dart';
import 'package:qr_app/models/hotel_list.dart';
import 'package:qr_app/models/onboardingcontent.dart';
import 'package:qr_app/models/subcategory.dart';
import 'package:qr_app/models/townlist.dart';

class Utils {
  static List<OnboardingContent> getOnboarding() {
    return [
      OnboardingContent(message: 'Making Food great', img: 'onboard4'),
      OnboardingContent(message: 'Shop till you drop', img: 'onboard5'),
      OnboardingContent(
          message: 'Bringing Growth through on time Delivery', img: 'onboard8')
    ];
  }

  static List<HotelList> getHotelList() {
    return [
      HotelList(tittle: "Morgans", imgName: "image1", icon: Icon(Icons.star)),
      HotelList(tittle: "Morgans", imgName: "image2", icon: Icon(Icons.star)),
      HotelList(tittle: "Morgans", imgName: "image3", icon: Icon(Icons.star)),
      HotelList(tittle: "Morgans", imgName: "image4", icon: Icon(Icons.star)),
      HotelList(tittle: "Morgans", imgName: "image6", icon: Icon(Icons.star)),
    ];
  }

  static List<TownList> getTownList() {
    return [
      TownList(name: "Kakamega", icon: Icon(Icons.circle_rounded)),
      TownList(name: "Nairobi", icon: Icon(Icons.circle_rounded)),
      TownList(name: "Kisumu", icon: Icon(Icons.circle_rounded)),
      TownList(name: "Mombasa", icon: Icon(Icons.circle_rounded)),
      TownList(name: "Nakuru", icon: Icon(Icons.circle_rounded)),
    ];
  }

  static List<Category> getMockedCategories() {
    return [
      //In Category we have then Hotels
      Category(
          name: 'Breakfast',
          description: '',
          color: AppColors.MEATS,
          imgName: 'image10',
          isSelected: false,
          subCategories: [
            //in SubCategory we have food types
            SubCategory(
                name: 'Salad',
                description: 'Ksh 1150',
                color: AppColors.FRUITS,
                imgName: 'image2',
                isSelected: false,
                parts: [
                  CategoryPart(
                      name: 'Fried', imgName: 'image2', isSelected: false),
                  CategoryPart(
                      name: 'Roasted', imgName: 'image8', isSelected: false),
                  CategoryPart(
                      name: 'Wet Fry', imgName: 'image11', isSelected: false),
                  CategoryPart(
                      name: 'Cooked', imgName: 'image4', isSelected: false),
                ]),
            SubCategory(
                name: 'Beaf',
                description: 'Ksh 150',
                color: AppColors.SEEDS,
                imgName: 'image12',
                isSelected: false,
                parts: []),
            SubCategory(
                name: 'Bugger',
                description: 'Ksh 250',
                color: AppColors.MEATS,
                imgName: 'image9',
                isSelected: false,
                parts: []),
            SubCategory(
                name: 'Soup',
                description: 'Ksh 500',
                color: AppColors.PASTRIES,
                imgName: 'image8',
                isSelected: false,
                parts: []),
            SubCategory(
                name: 'Vegetables',
                description: 'Ksh 200',
                color: AppColors.VEGS,
                imgName: 'image4',
                isSelected: false,
                parts: []),
            SubCategory(
                name: 'Drinks',
                description: 'Ksh 250',
                color: AppColors.VEGS,
                imgName: 'image3',
                isSelected: false,
                parts: []),
            SubCategory(
                name: 'Beaf',
                description: 'Ksh 150',
                color: AppColors.SEEDS,
                imgName: 'image12',
                isSelected: false,
                parts: []),
            SubCategory(
                name: 'Bugger',
                description: 'Ksh 250',
                color: AppColors.MEATS,
                imgName: 'image9',
                isSelected: false,
                parts: []),
            SubCategory(
                name: 'Soup',
                description: 'Ksh 500',
                color: AppColors.PASTRIES,
                imgName: 'image8',
                isSelected: false,
                parts: []),
            SubCategory(
                name: 'Vegetables',
                description: 'Ksh 200',
                color: AppColors.VEGS,
                imgName: 'image4',
                isSelected: false,
                parts: []),
            SubCategory(
                name: 'Drinks',
                description: 'Ksh 250',
                color: AppColors.VEGS,
                imgName: 'image3',
                isSelected: false,
                parts: []),
            SubCategory(
                name: 'Beaf',
                description: 'Ksh 150',
                color: AppColors.SEEDS,
                imgName: 'image12',
                isSelected: false,
                parts: []),
            SubCategory(
                name: 'Bugger',
                description: 'Ksh 250',
                color: AppColors.MEATS,
                imgName: 'image9',
                isSelected: false,
                parts: []),
          ]),
      Category(
          name: 'Lunch',
          description: '',
          color: AppColors.FRUITS,
          imgName: 'image2',
          isSelected: false,
          subCategories: []),
      Category(
          name: 'Dinner',
          description: '',
          color: AppColors.SEEDS,
          imgName: 'image12',
          isSelected: false,
          subCategories: []),
      Category(
          name: 'Snacks',
          description: '',
          color: AppColors.MEATS,
          imgName: 'image9',
          isSelected: false,
          subCategories: []),
      Category(
          name: 'Drinks',
          description: '',
          color: AppColors.PASTRIES,
          imgName: 'image3',
          isSelected: false,
          subCategories: []),
      Category(
          name: 'Vegetables',
          description: '',
          color: AppColors.VEGS,
          imgName: 'image4',
          isSelected: false,
          subCategories: []),
    ];
  }
}

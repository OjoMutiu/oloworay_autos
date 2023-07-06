import 'package:flutter/material.dart';
import 'package:oloworay_autos_/constants/app_colors.dart';
import 'package:oloworay_autos_/constants/app_dimensions.dart';

import 'car_brand_cards.dart';


class CarBrands extends StatelessWidget {
  const CarBrands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    List<Map<String, String>> cars = [
      {"image": "assets/images/home/Toyota.png", "name": "Toyota"},
      {"image": "assets/images/home/Honda.png", "name": "Honda"},
      {"image": "assets/images/home/lexus.png", "name": "Lexus"},
      {"image": "assets/images/home/Ford.png", "name": "Ford"},
      {"image": "assets/images/home/BMW.png", "name": "BMW"},
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppDimension.width20,
          vertical: AppDimension.height20),
      decoration: BoxDecoration(
          color: AppColors.carTagColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(AppDimension.height12)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(cars.length, (index) => CarFilterCard(
            imgSrc: cars[index]["image"]!, carName: cars[index]["name"]!,
            onTap: () {
              switch(index){
                case 0:
                //Todo: filter all toyota car
                  break;
                case 1:
                  break;
                case 2:
                  break;
                case 3:
                  break;
                case 4:
                  break;
              }
            },))
        ],
      ),
    );
  }
}

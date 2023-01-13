import 'dart:developer';

import 'package:canino_food/const/colors.dart';
import 'package:canino_food/utils/helper.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String imageName;

  final double borderRadius = 12;
  const ProductCard(
      {super.key,
      required this.productName,
      required this.productPrice,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        height: 200,
        decoration: BoxDecoration(
          color: AppColor.placeholderbg,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            Image.asset(
              imageName,
              height: 100,
              width: 100,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: const TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w100),
                      ),
                      Text(
                        "\$$productPrice",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: () {
                        log("added to list");
                      },
                      icon: Image.asset(
                        Helper.getAssetName("Icons", "add.png"),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

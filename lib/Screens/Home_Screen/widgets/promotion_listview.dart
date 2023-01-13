import 'package:canino_food/Screens/widgets/promotion_card.dart';
import 'package:canino_food/models/promotion.dart';
import "package:flutter/material.dart";

class PromotionListView extends StatelessWidget {
  const PromotionListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: 150,
      width: double.maxFinite,
      child: ListView.builder(
          itemCount: Promotion.getAllPromotions().length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => AspectRatio(
                aspectRatio: 1.9 / .75,
                child: PromotionCard(
                  title: Promotion.getAllPromotions()[index].title,
                  description: Promotion.getAllPromotions()[index].description,
                  imgUrl: Promotion.getAllPromotions()[index].imgUrl,
                  color: Promotion.getAllPromotions()[index].color,
                ),
              ))),
    );
  }
}

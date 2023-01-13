import 'package:flutter/material.dart';

class PromotionCard extends StatefulWidget {
  final String title;
  final String description;
  final String imgUrl;
  final Color color;
  const PromotionCard(
      {required this.title,
      required this.description,
      required this.imgUrl,
      required this.color,
      super.key});

  @override
  State<PromotionCard> createState() => _PromotionCardState();
}

class _PromotionCardState extends State<PromotionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("assets/images/bg1.png"), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
        color: widget.color,
      ),
      margin: const EdgeInsets.only(right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(widget.imgUrl),
          const Spacer(),
          SizedBox(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.description,
                  style: const TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: 12,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

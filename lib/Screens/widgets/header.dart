import 'package:canino_food/const/colors.dart';
import 'package:canino_food/utils/Helper.dart';
import "package:flutter/material.dart";

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 30,
                offset: const Offset(0, -20),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              // code to handle the button press
            },
            icon: Image.asset(
              Helper.getAssetName("Icons", "Search.png"),
              height: 50,
              width: 50,
            ),
          ),
        ),
        const Text(
          "Canino-food",
          style: TextStyle(
              color: AppColor.primary,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
              letterSpacing: 1.2,
              fontSize: 20),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 30,
                offset: const Offset(0, -20),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              // code to handle the button press
            },
            icon: Image.asset(
              Helper.getAssetName("Icons", "Notification.png"),
              height: 50,
              width: 50,
            ),
          ),
        ),
      ],
    );
  }
}

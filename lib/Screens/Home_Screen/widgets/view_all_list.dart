import 'package:canino_food/const/colors.dart';
import "package:flutter/material.dart";

class ViewAllList extends StatefulWidget {
  final String title;
  const ViewAllList({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  State<ViewAllList> createState() => _ViewAllListState();
}

class _ViewAllListState extends State<ViewAllList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
            fontSize: 20.0,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "View All",
            style: TextStyle(
                color: AppColor.primary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: "Metrophobic",
                letterSpacing: 1),
          ),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.0,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            categoryButton(Icons.house_rounded, "house"),
            categoryButton(Icons.villa_rounded, "villa"),
            categoryButton(Icons.apartment_rounded, "apartment"),
            categoryButton(Icons.castle_rounded, "castle"),
          ],
        ));
  }
}

Widget categoryButton(IconData icon, String? text) {
  return Container(
    margin: const EdgeInsets.all(8.0),
    padding: const EdgeInsets.all(5.0),
    width: 80.0,
    height: 80.0,
    child: InkWell(
      onTap: () {},
      child: Column(
        children: [
          Icon(
            icon,
            size: 32.0,
            color: const Color.fromARGB(230, 80, 138, 255),
          ),
          Text(
            "$text",
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w900,
                color: Colors.grey.shade300),
          )
        ],
      ),
    ),
  );
}

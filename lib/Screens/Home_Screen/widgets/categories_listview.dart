import 'package:canino_food/Providers/category_list.dart';
import 'package:canino_food/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  var currentIndex = 0;
  changeCategory(int index, BuildContext context) {
    Provider.of<CategoryProvider>(context, listen: false).changeGridView(index);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: double.maxFinite,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
            changeCategory(index, context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            margin: const EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              color: index == currentIndex
                  ? AppColor.primary
                  : AppColor.placeholderbg,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
                child: Text(
              categories[index],
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                color: index == currentIndex
                    ? Colors.white
                    : const Color.fromARGB(255, 164, 163, 163),
              ),
            )),
          ),
        ),
      ),
    );
  }

  List<String> categories = ["All", "Food", "Toys", "Accesories", "Pharmacy"];
}

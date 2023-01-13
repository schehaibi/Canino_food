// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:canino_food/Providers/category_list.dart';
import "package:flutter/material.dart";

import 'package:canino_food/Screens/widgets/productcard.dart';
import 'package:canino_food/models/produit.dart';
import 'package:canino_food/utils/helper.dart';
import 'package:provider/provider.dart';

class ProductGridView extends StatefulWidget {
  const ProductGridView({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductGridView> createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {
  late List<Product> porducts;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(builder: ((context, value, child) {
      return GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (Helper.getScreenHeight(context) / 4.1) /
                (MediaQuery.of(context).size.height / 4.3)),
        primary: false,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        itemCount: productsList[value.categoryIndex].length,
        itemBuilder: (context, index) => ProductCard(
            productName: productsList[value.categoryIndex][index].name,
            productPrice:
                productsList[value.categoryIndex][index].price.toString(),
            imageName: productsList[value.categoryIndex][index].imgUrl),
      );
    }));
  }

  List<List<Product>> productsList = [
    Product.getAllProducts(),
    Product.getFoodProduct(),
    Product.getToysProduct(),
    Product.getAccesoriesProducts(),
    Product.getPharmacyProducts(),
  ];

  List<String> test = ["All", "Food", "Toys", "Accesories", "Pharmacy"];
}

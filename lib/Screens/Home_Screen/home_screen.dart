import 'package:canino_food/Screens/Home_Screen/widgets/categories_ListView.dart';
import 'package:canino_food/Screens/Home_Screen/widgets/product_gridview.dart';
import 'package:canino_food/Screens/Home_Screen/widgets/promotion_listview.dart';
import 'package:canino_food/Screens/Home_Screen/widgets/view_all_list.dart';
import 'package:flutter/material.dart';
import 'package:canino_food/Screens/widgets/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: LayoutBuilder(builder: (context, constraint) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: Column(
              children: const [
                SizedBox(height: 50),
                Header(),
                SizedBox(height: 20),
                PromotionListView(),
                ViewAllList(title: "Category"),
                SizedBox(height: 10),
                CategoriesListView(),
                ViewAllList(title: "Best Seller"),
                ProductGridView(),
              ],
            ),
          ),
        );
      }),
    );
  }
}

import 'dart:developer';

import "package:flutter/material.dart";

class CategoryProvider extends ChangeNotifier {
  int categoryIndex = 0;

  void changeGridView(int index) {
    categoryIndex = index;
    log(categoryIndex.toString());
    notifyListeners();
  }
}

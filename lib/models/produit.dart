// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Product {
  Colors? color;
  String imgUrl;
  String name;
  num price;

  Product({this.color,required this.imgUrl, required this.name, required this.price});

  static List<Product> getAllProducts() {
    return [
      Product(
        imgUrl: 'assets/images/img1.png',
        name: 'RC Kitten',
        price: 12.99,
      ),
      Product(
        imgUrl: 'assets/images/img2.png',
        name: 'Happy dog',
        price: 22.99,
      ),
      Product(
        imgUrl: 'assets/images/img3.png',
        name: 'RC Kitten',
        price: 23.58,
      ),
      Product(
        imgUrl: 'assets/images/img4.png',
        name: 'RC Adult',
        price: 24.25,
      ),
      Product(
        imgUrl: 'assets/images/img5.png',
        name: 'Happy dog',
        price: 22.25,
      ),
      Product(
        imgUrl: 'assets/images/img6.png',
        name: 'Happy dog',
        price: 27.25,
      ),
    ];
  }

  static List<Product> getFoodProduct() {
    return [
      Product(
        imgUrl: 'assets/images/img1.png',
        name: 'RC Kitten',
        price: 12.99,
      ),
      Product(
        imgUrl: 'assets/images/img2.png',
        name: 'Soba Soup',
        price: 13,
      ),
      Product(
        imgUrl: 'assets/images/img3.png',
        name: 'Soba Soup',
        price: 15,
      ),
      Product(
        imgUrl: 'assets/images/img4.png',
        name: 'Soba Soup',
        price: 23,
      ),
      Product(
        imgUrl: 'assets/images/img5.png',
        name: 'Soba Soup',
        price: 23,
      ),
      Product(
        imgUrl: 'assets/images/img6.png',
        name: 'Soba Soup',
        price: 23,
      ),
    ];
  }

  static List<Product> getToysProduct() {
    return [
      Product(
        imgUrl: 'assets/images/img1.png',
        name: 'RC Kitten',
        price: 12.99,
      ),
      Product(
        imgUrl: 'assets/images/img2.png',
        name: 'Soba Soup',
        price: 13,
      ),
      Product(
        imgUrl: 'assets/images/img3.png',
        name: 'Soba Soup',
        price: 15,
      ),
      Product(
        imgUrl: 'assets/images/img4.png',
        name: 'Soba Soup',
        price: 23,
      ),
      Product(
        imgUrl: 'assets/images/img5.png',
        name: 'Soba Soup',
        price: 23,
      ),
      Product(
        imgUrl: 'assets/images/img6.png',
        name: 'Soba Soup',
        price: 23,
      ),
    ];
  }

  static List<Product> getAccesoriesProducts() {
    return [
      Product(
        imgUrl: 'assets/images/img1.png',
        name: 'RC Kitten',
        price: 12.99,
      ),
      Product(
        imgUrl: 'assets/images/img2.png',
        name: 'Soba Soup',
        price: 13,
      ),
      Product(
        imgUrl: 'assets/images/img3.png',
        name: 'Soba Soup',
        price: 15,
      ),
      Product(
        imgUrl: 'assets/images/img4.png',
        name: 'Soba Soup',
        price: 23,
      ),
      Product(
        imgUrl: 'assets/images/img5.png',
        name: 'Soba Soup',
        price: 23,
      ),
      Product(
        imgUrl: 'assets/images/img6.png',
        name: 'Soba Soup',
        price: 23,
      ),
    ];
  }

  static List<Product> getPharmacyProducts() {
    return [
      Product(
        imgUrl: 'assets/images/img10.png',
        name: 'RC Kitten',
        price: 12.99,
      ),
      Product(
        imgUrl: 'assets/images/img12.png',
        name: 'Soba Soup',
        price: 13,
      ),
      Product(
        imgUrl: 'assets/images/img13.png',
        name: 'Soba Soup',
        price: 15,
      ),
      Product(
        imgUrl: 'assets/images/img14.png',
        name: 'Soba Soup',
        price: 23,
      ),
      Product(
        imgUrl: 'assets/images/img15.png',
        name: 'Soba Soup',
        price: 23,
      ),
    ];
  }
}

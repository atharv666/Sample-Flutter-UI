import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class Product {
  final String? image, title, description;
  final int? price, size, id;
  final Color? color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color
  });
}

List<Product> products = [
  Product(
     id: 1,
     image: "images/bag_1.png",
     title: "Office Code",
     price: 234,
     description: loremIpsum(words: 25),
     size: 12,
     color: Color(0xFF3D82AE)
  ),
  Product(
     id: 2,
     image: "images/bag_2.png",
     title: "Belt Bag",
     price: 234,
     description: loremIpsum(words: 25),
     size: 8,
     color: Color(0xFFD3A984)
  ),
  Product(
     id: 3,
     image: "images/bag_3.png",
     title: "Hang Top",
     price: 234,
     description: loremIpsum(words: 25),
     size: 10,
     color: Color(0xFF989493)
  ),
  Product(
     id: 4,
     image: "images/bag_4.png",
     title: "Old Fashion",
     price: 234,
     description: loremIpsum(words: 25),
     size: 11,
     color: Color(0xFFE6B398)
  ),
  Product(
     id: 5,
     image: "images/bag_5.png",
     title: "Office Code",
     price: 234,
     description: loremIpsum(words: 25),
     size: 12,
     color: Color(0xFFFB7883)
  ),
  Product(
     id: 6,
     image: "images/bag_6.png",
     title: "Office Code",
     price: 234,
     description: loremIpsum(words: 25),
     size: 12,
     color: Color(0xFFAEAEAE)
  )
];

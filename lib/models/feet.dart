import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class FootWear{
  final String? image, title, description;
  final int? price, size, id;
  final Color? color;

  FootWear({this.image, this.title, this.description, this.price, this.size, this.id, this.color});
}

List<FootWear> wfeet = [
  FootWear(
    id: 1,
    image: "images/foot_1.png",
    title: "Stylish Sandals",
    price: 150,
    description: loremIpsum(words: 25),
    size: 80,
    color: Colors.orange[200],
  ),
  FootWear(
    id: 2,
    image: "images/foot_2.png",
    title: "High Heels (Casual)",
    price: 100,
    description: loremIpsum(words: 25),
    size: 80,
    color: Colors.pink[50],
  ),
  FootWear(
    id: 3,
    image: "images/foot_3.png",
    title: "High Heels (Party)",
    price: 100,
    description: loremIpsum(words: 25),
    size: 90,
    color: Colors.grey.shade700
  ),
  FootWear(
    id: 4,
    image: "images/foot_4.png",
    title: "Sandals",
    price: 80,
    description: loremIpsum(words: 25),
    size: 90,
    color: Colors.pink[200],
  ),
  FootWear(
    id: 5,
    image: "images/foot_5.png",
    title: "Sandals",
    price: 100,
    description: loremIpsum(words: 25),
    size: 90,
    color: Colors.brown[400],
  ),
  FootWear(
    id: 6,
    image: "images/foot_6.png",
    title: "Party Wear",
    price: 100,
    description: loremIpsum(words: 25),
    size: 90,
    color: Colors.red[300],
  ),
];
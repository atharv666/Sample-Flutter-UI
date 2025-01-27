import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class Jewellery{
  final String? image, title, description;
  final int? price, size, id;
  final Color? color;

  Jewellery({this.image, this.title, this.description, this.price, this.size, this.id, this.color});
}

List<Jewellery> wjewel = [
  Jewellery(
    id: 1,
    image: "images/jewel_1.png",
    title: "Neck Piece",
    price: 300,
    description: loremIpsum(words: 25),
    size: 20,
    color: Colors.orange[300],
  ),
  Jewellery(
    id: 2,
    image: "images/jewel_2.png",
    title: "Neck Piece",
    price: 300,
    description: loremIpsum(words: 25),
    size: 20,
    color: Colors.lightBlue[200]
  ),
  Jewellery(
    id: 3,
    image: "images/jewel_3.png",
    title: "Neck Piece",
    price: 300,
    description: loremIpsum(words: 25),
    size: 20,
    color: Colors.pink[100]
  ),
  Jewellery(
    id: 4,
    image: "images/jewel_4.png",
    title: "Neck Piece",
    price: 300,
    description: loremIpsum(words: 25),
    size: 20,
    color: Colors.amber[200]
  ),
  Jewellery(
    id: 5,
    image: "images/jewel_5.png",
    title: "Bangles",
    price: 300,
    description: loremIpsum(words: 25),
    size: 20,
    color: Colors.amber[200]
  ),
  Jewellery(
    id: 6,
    image: "images/jewel_6.png",
    title: "Ear Rings",
    price: 300,
    description: loremIpsum(words: 25),
    size: 20,
    color: Colors.red[100]
  ),
];
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class Dress{
  final String? image, title, description;
  final int? price, size, id;
  final Color? color;

  Dress({this.image, this.title, this.description, this.price, this.size, this.id, this.color});
}

List<Dress> wdress = [
  Dress(
    id: 1,
    image: "images/dress_1.png",
    title: "Casual Wear",
    price: 150,
    description: loremIpsum(words: 25),
    size: 150,
    color: Colors.pink[50],
  ),
  Dress(
    id: 2,
    image: "images/dress_2.png",
    title: "Casual Wear",
    price: 150,
    description: loremIpsum(words: 25),
    size: 150,
    color: Colors.grey[400],
  ),
  Dress(
    id: 3,
    image: "images/dress_3.png",
    title: "Party Dress",
    price: 150,
    description: loremIpsum(words: 25),
    size: 150,
    color: Colors.red[200],
  ),
  Dress(
    id: 4,
    image: "images/dress_4.png",
    title: "Formal Wear",
    price: 150,
    description: loremIpsum(words: 25),
    size: 150,
    color: Colors.grey[600],
  ),
  Dress(
    id: 5,
    image: "images/dress_5.png",
    title: "Party Wear",
    price: 150,
    description: loremIpsum(words: 25),
    size: 150,
    color: Colors.purple[200],
  ),
  Dress(
    id: 6,
    image: "images/dress_6.png",
    title: "Casual Wear",
    price: 150,
    description: loremIpsum(words: 25),
    size: 150,
    color: Colors.amber[50],
  ),
];
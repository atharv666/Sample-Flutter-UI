import 'package:flutter/material.dart';
import 'package:online_bag_shop/screens/components/Lists/dress_wear.dart';
import 'package:online_bag_shop/screens/components/Lists/footwear.dart';
import 'package:online_bag_shop/screens/components/Lists/item_bag.dart';
import 'package:online_bag_shop/screens/components/Lists/jewellery.dart';
// import 'package:online_bag_shop/models/product.dart';
import 'package:online_bag_shop/screens/components/categories.dart';
// import 'package:online_bag_shop/screens/components/item_bag.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedindex = 0;
  final List components = [
    ItemBag(pagenumber: 0),
    JewelleryWidget(pagenumber: 1,),
    FootWearWidget(pagenumber: 2,),
    DressWearWidget(pagenumber: 3,),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Text("Women", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        ),
        Categories(
          onCategorySelected: (index) {
            setState(() {
              selectedindex = index;
            });  
          },
        ),
        SizedBox(height: 20,),
        components[selectedindex]
      ],
    );
  }
}
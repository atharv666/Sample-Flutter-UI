import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_bag_shop/models/dress.dart';
import 'package:online_bag_shop/models/feet.dart';
import 'package:online_bag_shop/models/jewels.dart';
import 'package:online_bag_shop/models/product.dart';
import 'package:online_bag_shop/screens/components/color_selection.dart';
import 'package:online_bag_shop/screens/components/product_counter.dart';

class DetailScreen extends StatelessWidget {
  final List pages = [
    products,
    wjewel,
    wfeet,
    wdress,
  ];
  final int index, pagenumber;

  DetailScreen({super.key, required this.index, required this.pagenumber});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: pages[pagenumber][index].color,
      appBar: AppBar(
        backgroundColor: pages[pagenumber][index].color,
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
          IconButton(
            color: Colors.white,
            icon: Icon(FontAwesomeIcons.cartShopping),
            onPressed: (){},
          ),
        ],
      ),
      body: Container(
        height: h,
        width: w,
        child: Stack(
          children: [
            Container(
              // height: h / 2.5,
              width: w,
              // color: Colors.amber,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Aristocratic Hand Bag", style: TextStyle(color: Colors.white, fontSize: 17),),
                  Text(pages[pagenumber][index].title!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),),
                  SizedBox(
                    height: 80,
                  ),
                  Text("Price", style: TextStyle(color: Colors.white),),
                  Text("\$${pages[pagenumber][index].price.toString()}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),)
                ],
              ),
            ),
            Positioned(
              top: h / 3,
              bottom: 0,
              child: Container(
                width: w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Text("Color", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      ColorSelection(),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 110,
              top: h / 2.28,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Size", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500
                  ),),
                  Text("${pages[pagenumber][index].size.toString()} cm", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                ],
              ),
            ),
            Positioned(
              top: h / 1.85,
              child: Container(
                height: 200,
                width: w,
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(pages[pagenumber][index].description!),
              ),
            ),
            ProductCounter(),
            Positioned(
              top: h / 1.49,
              right: 20,
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red
                ),
              ),
            ),
            Positioned(
              top: h / 1.4955,
              right: 17,
              child: IconButton(onPressed: (){}, icon : Icon(Icons.favorite, color: Colors.white, size: 35,)),
            ),
            Positioned(
              top: h / 1.3,
              left: 20,
              child: Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: pages[pagenumber][index].color!, width: 1.8),
                  borderRadius: BorderRadius.circular(18)
                ),
                child: IconButton(onPressed: (){}, icon: Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Icon(FontAwesomeIcons.cartPlus, color: pages[pagenumber][index].color,),
                )),
              ),
            ),
            Positioned(
              top: h / 1.3,
              right: 20,
              child: Container(
                height: 50,
                width: 290,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  // border: Border.all(color: pages[pagenumber][index].color!, width: 1.8),
                  borderRadius: BorderRadius.circular(18),
                  color: pages[pagenumber][index].color
                ),
                child: TextButton(onPressed: (){}, child: Text("buy now".toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),))
              ),
            ),
            Positioned(
              top: h / 9,
              right: w / 20,
              child: Hero(
                tag: "${pages[pagenumber][index].id}",
                child: Image(
                  height: 270,
                  width: 240,
                  fit: BoxFit.fitWidth,
                  image: AssetImage(pages[pagenumber][index].image!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
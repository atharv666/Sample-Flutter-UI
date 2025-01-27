import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_bag_shop/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: (){},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
              // icon: Image(image: AssetImage('images/bag_1.png')),
              icon: Icon(FontAwesomeIcons.cartShopping),
              onPressed: (){},
            )
          ],
        ),
        body: Body(),
      ),
    );
  }
}


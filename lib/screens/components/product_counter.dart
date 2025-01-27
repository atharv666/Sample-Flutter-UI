import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCounter extends StatefulWidget {
  const ProductCounter({super.key});

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Positioned(
      top: h / 1.49,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
                elevation: WidgetStateProperty.all(6),
              ),
              onPressed: (){
                setState(() {
                  if(count > 1){
                    count -= 1;
                  }
                });
              }, 
              child: Icon(FontAwesomeIcons.minus, color: Colors.black),
            ),
            Container(
              width: 50,
              // color: Colors.amber,
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(count < 10 ? "0$count" : "$count", style: TextStyle(fontSize: 20),),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
                elevation: WidgetStateProperty.all(6),
              ),
              onPressed: (){
                setState(() {
                  count += 1;
                });
              }, 
              child: Icon(FontAwesomeIcons.plus, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
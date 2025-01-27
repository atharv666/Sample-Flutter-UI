import 'package:flutter/material.dart';
import 'package:online_bag_shop/models/dress.dart';
import 'package:online_bag_shop/screens/detail_screen.dart';

class DressWearWidget extends StatelessWidget {
  final int pagenumber;
  const DressWearWidget({super.key, required this.pagenumber});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.68,
            crossAxisSpacing: 20,
            mainAxisSpacing: 8
          ),
          itemCount: wdress.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailScreen(index: index, pagenumber: pagenumber,);
                    },
                  )
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      color: wdress[index].color,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Hero(
                      tag: "${wdress[index].id}",
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(wdress[index].image!),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: SizedBox(
                      child: Text(wdress[index].title!, style: TextStyle(color: Colors.grey.shade700),),
                    ),
                  ),
                  SizedBox(
                    child: Text("\$${wdress[index].price.toString()}", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
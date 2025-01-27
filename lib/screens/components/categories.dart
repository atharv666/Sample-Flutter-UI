import 'package:flutter/material.dart';
// import 'package:online_bag_shop/screens/components/Lists/item_bag.dart';

//Stateful Widget for the categories
class Categories extends StatefulWidget {
  final Function(int) onCategorySelected;
  const Categories({super.key, required this.onCategorySelected});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand Bags", "Jewellery", "Footwear", "Dresses"];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      height: 32,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedindex = index;
              });
              widget.onCategorySelected(index);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categories[index],
                    style: TextStyle(
                      fontWeight: selectedindex == index ? FontWeight.bold : FontWeight.normal,
                      color: selectedindex == index ? Colors.black : Colors.grey.shade700,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 30,
                    color: selectedindex == index ? Colors.black : Colors.transparent,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
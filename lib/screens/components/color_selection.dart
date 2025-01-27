import 'package:flutter/material.dart';

class ColorSelection extends StatefulWidget {
  const ColorSelection({super.key});

  @override
  State<ColorSelection> createState() => _ColorSelectionState();
}

class _ColorSelectionState extends State<ColorSelection> {
  int selectedindex = 0;

  final List<Color> color = [
    Color(0xFF3D82AE),
    Colors.yellow[800]!,
    Colors.grey,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedindex = index;
              });
            },
            child: Row(
              children: [
                Container(
                  height: 23,
                  width: 23,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: selectedindex == index ? Colors.black : Colors.transparent)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color[index]
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
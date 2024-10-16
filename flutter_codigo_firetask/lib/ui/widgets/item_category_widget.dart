import 'package:flutter/material.dart';
import 'package:flutter_codigo_firetask/ui/general/colors.dart';

class ItemCategoryWidget extends StatelessWidget {
  String text;

  ItemCategoryWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 2.5),
      decoration: BoxDecoration(
        color: categoryColor[text],
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 13.0,
        ),
      ),
    );
  }
}

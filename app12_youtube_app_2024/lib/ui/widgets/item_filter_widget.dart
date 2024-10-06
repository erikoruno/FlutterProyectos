import 'package:app12_youtube_app_2024/ui/general/colors.dart';
import 'package:flutter/material.dart';

class ItemFilterWidget extends StatelessWidget {
  String texto;
  bool isSelected;

  ItemFilterWidget({super.key, required this.texto, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      child: Chip(
        backgroundColor: isSelected ? Colors.white : KBrandSecundaryColor,
        label: Text(texto),
        labelStyle: TextStyle(
          color: isSelected ? KBrandSecundaryColor : Colors.white,
        ),
      ),
    );
  }
}

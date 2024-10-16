import 'package:flutter/material.dart';
import 'package:flutter_codigo_firetask/ui/general/colors.dart';

class TextFieldNormalWidget extends StatelessWidget {
  String hintText;
  IconData icon;
  Function? onTap;
  TextEditingController controller;

  TextFieldNormalWidget({
    super.key,
    required this.hintText,
    required this.icon,
    this.onTap,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap != null
          ? () {
              onTap!();
            }
          : null,
      readOnly: onTap != null ? true : false,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
        prefixIcon: Icon(
          icon,
          size: 20.0,
          color: kBrandPrymaryColor.withOpacity(0.6),
        ),
        // suffixIcon: IconButton(
        //   icon: Icon(Icons.remove_red_eye),
        //   onPressed: () {},
        // ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: kBrandPrymaryColor.withOpacity(0.6),
        ),
        filled: true,
        fillColor: kBrandSecondaryColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide.none,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide.none,
        ),
      ),
      validator: (String? value) {
        if (value != null && value.isEmpty) {
          return "Campo es obligatorio";
        }
        return null;
      },
    );
  }
}

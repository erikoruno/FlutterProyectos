import 'package:flutter/material.dart';
import 'package:flutter_codigo_firetask/ui/general/colors.dart';

class ButtonNormalWidget extends StatelessWidget {
  Function onPressed;

  ButtonNormalWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.0,
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: kBrandPrymaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
        ),
        icon: const Icon(
          Icons.save,
          color: Colors.white,
        ),
        label: const Text(
          "Guardar",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

import 'package:app11_pokedex_2024/models/pokemon_model.dart';
import 'package:app11_pokedex_2024/pages/detail_page.dart';
import 'package:app11_pokedex_2024/ui/general/colors.dart';
import 'package:app11_pokedex_2024/ui/widgets/item_type_widget.dart';
import 'package:flutter/material.dart';

class ItemPokemonWidget extends StatelessWidget {
  // String name;
  // String img;
  // List<String> type;
  PokemonModel pokemon;

  ItemPokemonWidget(
      {super.key,
      // super.key,
      // required this.name,
      // required this.img,
      // required this.type,
      required this.pokemon});

  @override
  Widget build(BuildContext context) {
    // print(type);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              pokemon: pokemon,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: colorsPokemon[pokemon.type[0]],
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -20,
              right: -20,
              child: Image.asset(
                "assets/img/pokeball.png",
                height: 120,
                color: Colors.white.withOpacity(0.27),
              ),
            ),
            Positioned(
              bottom: -10,
              right: -10,
              child: Image.network(
                pokemon.img,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Image.asset(
                    "assets/img/pokeball.png",
                    height: 100,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ...pokemon.type.map((e) => ItemTypeWidget(
                        text: e,
                      )),
                  // Column(
                  //   children: type.map((e) => ItemTypeWidget()).toList(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

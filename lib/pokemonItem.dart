import 'package:flutter/material.dart';
import 'package:flutterlab/pokemonModel.dart';
import 'package:flutterlab/pokemonPage.dart';

class PokemonItem extends StatelessWidget {
  PokemonItem({Key key, @required this.pokemon}) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PokemonPage(pokemon: pokemon)),
        );
      },
      child: Row(children: <Widget>[
        Flexible(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[getPokemonName()]),
        ),
        Column(children: <Widget>[
          Center(
            child: Image.network(pokemon.defaultImage),
          )
        ]),
      ]),
    );
  }

  Widget getPokemonName() {
    return Row(
      children: <Widget>[
        Text(pokemon.name, style: TextStyle(fontSize: 22)),
      ],
    );
  }
}

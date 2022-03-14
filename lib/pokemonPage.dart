import 'package:flutter/material.dart';
import 'package:flutterlab/pokemonModel.dart';

class PokemonPage extends StatelessWidget {
  PokemonPage({Key key, @required this.pokemon}) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Detail Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Row(children: <Widget>[
            Flexible(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    getPokemonName(),
                    SizedBox(height: 10),
                    getAbilitiesRow()
                  ]),
            ),
            Column(children: <Widget>[
              Center(
                child: Image.network(pokemon.defaultImage),
              )
            ]),
          ]),
        ));
  }

  Widget getPokemonName() {
    return Row(
      children: <Widget>[
        Text(pokemon.name.toUpperCase(), style: TextStyle(fontSize: 26)),
      ],
    );
  }

  Widget getAbilitiesRow() {
    String abilitiesString = '';

    for (Map<String, dynamic> abilities in pokemon.abilities) {
      abilitiesString = abilitiesString + abilities['ability']['name'] + ', ';
    }
    abilitiesString = abilitiesString.substring(0, abilitiesString.length - 2);

    return Row(children: <Widget>[
      Expanded(child: Text('abilities: ' + abilitiesString))
    ]);
  }
}

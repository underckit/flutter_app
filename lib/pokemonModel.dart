class Pokemon {
  Pokemon({this.id, this.name, this.abilities, this.defaultImage});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      
        id: json['id'],
        name: json['name'],
        abilities: json['abilities'],
        defaultImage: json['sprites']['front_default']);
  }

  final int id;
  final String name;
  final List<dynamic> abilities;
  final String defaultImage;
}

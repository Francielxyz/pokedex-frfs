import 'package:flutter/material.dart';

class Pokemon {
  final int id;
  final String num;
  final String name;
  final List<String> type;
  final List<String> weaknesses;

  factory Pokemon.fromMap(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      num: json['num'],
      name: json['name'],
      type: (json['type'] as List<dynamic>)
          .map(
            (e) => e as String,
          )
          .toList(),
      weaknesses: (json['weaknesses'] as List<dynamic>)
          .map(
            (e) => e as String,
          )
          .toList(),
    );
  }

  Color? get baseColor => _color(type: type[0]);

  String? get tipoPokemonPT => _tipoPokemon(type: type[0]);

  String get img =>
      'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$num.png';

  Pokemon({
    required this.id,
    required this.num,
    required this.name,
    required this.type,
    required this.weaknesses,
  });

  static Color? _color({required String type}) {
    switch (type) {
      case 'Normal':
        return Colors.brown[400];
      case 'Fire':
        return Colors.red;
      case 'Water':
        return Colors.blue;
      case 'Grass':
        return Colors.green;
      case 'Electric':
        return Colors.amber;
      case 'Ice':
        return Colors.cyanAccent[400];
      case 'Fighting':
        return Colors.orange;
      case 'Poison':
        return Colors.purple;
      case 'Ground':
        return Colors.orange[300];
      case 'Flying':
        return Colors.indigo[200];
      case 'Psychic':
        return Colors.pink;
      case 'Bug':
        return Colors.lightGreen[500];
      case 'Rock':
        return Colors.grey;
      case 'Ghost':
        return Colors.indigo[400];
      case 'Dark':
        return Colors.brown;
      case 'Dragon':
        return Colors.indigo[800];
      case 'Steel':
        return Colors.blueGrey;
      case 'Fairy':
        return Colors.pinkAccent[100];
      default:
        return Colors.grey;
    }
  }

  static String? _tipoPokemon({required String type}) {
    switch (type) {
      case 'Normal':
        return "Normal";
      case 'Fire':
        return "Fogo";
      case 'Water':
        return "Água";
      case 'Grass':
        return "Grama";
      case 'Electric':
        return "Eletríco";
      case 'Ice':
        return "Gelo";
      // case 'Fighting':
      //   return Colors.orange;
      // case 'Poison':
      //   return Colors.purple;
      // case 'Ground':
      //   return Colors.orange[300];
      // case 'Flying':
      //   return Colors.indigo[200];
      // case 'Psychic':
      //   return Colors.pink;
      // case 'Bug':
      //   return Colors.lightGreen[500];
      // case 'Rock':
      //   return Colors.grey;
      // case 'Ghost':
      //   return Colors.indigo[400];
      // case 'Dark':
      //   return Colors.brown;
      // case 'Dragon':
      //   return Colors.indigo[800];
      // case 'Steel':
      //   return Colors.blueGrey;
      // case 'Fairy':
      //   return Colors.pinkAccent[100];
      // default:
      //   return Colors.grey;
    }
  }
}

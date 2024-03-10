import 'package:app_haikyuu/main.dart';
import 'package:flutter/material.dart';

@immutable
class Player {
  final int id;
  final String name;
  final String team;
  final String school;
  final String position;
  final String image;
  final String goal;
  final String phrase;
  final double height;
  final double weight;
  final int years;
  final String reputation;

  factory Player.fromMap(Map<String, dynamic> json) {
    return Player(
        name: json['name'],
        team: json['team'],
        id: json['id'],
        school: json['school'],
        position: json['position'],
        goal: json['goal'],
        phrase: json['phrase'],
        weight: json['weight'],
        height: json['height'],
        years: json['years'],
        reputation: json['reputation']);
  }

  Player(
      {this.id = 0,
      this.name = "",
      this.team = "",
      this.school = "",
      this.position = "",
      this.goal = "",
      this.phrase = "",
      this.height = 0.0,
      this.weight = 0.0,
      this.years = 0,
      this.reputation = "",
      this.image = ""});

  final List<String> qtdButtons = [
    'Name',
    'Team',
    'School',
    'Position',
  ];

  Player copyWith({
    int? id,
    String? name,
    String? team,
    String? school,
    String? position,
    String? goal,
    String? phrase,
    double? height,
    double? weight,
    int? years,
    String? reputation,
  }) {
    return Player(
        id: id ?? this.id,
        name: name ?? this.name,
        team: team ?? this.team,
        school: school ?? this.school,
        position: position ?? this.position,
        goal: goal ?? this.goal,
        phrase: phrase ?? this.phrase,
        height: height ?? this.height,
        weight: weight ?? this.weight,
        years: years ?? this.years,
        reputation: reputation ?? this.reputation);
  }
}

import 'package:flutter/material.dart';

class TravelerModel {
  Color color;
  String name;
  int count;
  double likes;
  TravelerModel({this.color, this.name, this.count, this.likes});
}

List<TravelerModel> travelerDist = [
  TravelerModel(
      color: Colors.red, name: 'Venus Claire', count: 156, likes: 2.7),
  TravelerModel(
      color: Colors.yellow, name: 'Winnie Bernice', count: 229, likes: 2.4),
  TravelerModel(
      color: Colors.blue, name: 'James Clark', count: 360, likes: 4.2),
  TravelerModel(color: Colors.pink, name: 'Ore Seyi', count: 156, likes: 2.7),
  TravelerModel(
      color: Colors.brown, name: 'Peter Parker', count: 151, likes: 1.7),
  TravelerModel(
      color: Colors.cyan, name: 'Thomas Brick', count: 156, likes: 2.7),
  TravelerModel(
      color: Colors.green, name: 'Tony Stark', count: 556, likes: 4.7),
  TravelerModel(
      color: Colors.deepPurple, name: 'Ore Tola', count: 156, likes: 2.7)
];

import 'package:flutter/material.dart';

var onboardList = [
  OnboardModel(
    imageUrl: 'asset/img/car.jpg', 
    title: 'Road', 
    body: 'Just having a drive', 
    color: color[0]),
  OnboardModel(
    imageUrl: 'asset/img/house.jpg', 
    title: 'Indoors', 
    body: 'Be it in a cool motel down the road', 
    color: color[1]),
  OnboardModel(
    imageUrl: 'asset/img/tree.jpg', 
    title: 'Forest', 
    body: 'Living the life wild', 
    color: color[0])
];

List<List<Color>> color = [
  [Colors.orange, Colors.orangeAccent],
  [Colors.purple, Colors.purpleAccent],
  [Colors.yellow, Colors.yellowAccent]
];

class OnboardModel{
  String imageUrl;
  String title;
  String body;
  List<Color> color;
  OnboardModel({this.imageUrl, this.title, this.body, this.color});
}
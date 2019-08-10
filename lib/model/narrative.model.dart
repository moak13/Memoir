import 'package:flutter/material.dart';

class NarrativeModel {
  Color avatar;
  Color image;
  String name;
  double time;
  String description;
  double likes;
  int comment;

  NarrativeModel(
      {this.avatar,
      this.image,
      this.name,
      this.time,
      this.description,
      this.likes,
      this.comment});
}

List<NarrativeModel> narrativeData = [
  NarrativeModel(
    avatar: Colors.red,
    image: Colors.pink,
    name: 'James Braide',
    time: 06.12,
    description: 'This place was lovely, will love to revisit again.',
    likes: 2.4,
    comment: 200
  ),
  NarrativeModel(
    avatar: Colors.indigo,
    image: Colors.yellowAccent,
    name: 'Seyi Ore-Aruwaju',
    time: 06.12,
    description: 'This place was lovely, will love to revisit again.',
    likes: 2.4,
    comment: 450
  ),
  NarrativeModel(
    avatar: Colors.lightBlue,
    image: Colors.pink,
    name: 'Thomas Eddison',
    time: 08.12,
    description: 'This place was lovely, will love to revisit again.',
    likes: 4.4,
    comment: 230
  ),
  NarrativeModel(
    avatar: Colors.limeAccent,
    image: Colors.deepPurpleAccent,
    name: 'Rosemary White',
    time: 03.40,
    description: 'This place was lovely, will love to revisit again.',
    likes: 2.8,
    comment: 250
  ),
  NarrativeModel(
    avatar: Colors.brown,
    image: Colors.purple,
    name: 'Luke Wheels',
    time: 03.42,
    description: 'This place was lovely, will love to revisit again.',
    likes: 2.4,
    comment: 1000
  ),
  NarrativeModel(
    avatar: Colors.yellow,
    image: Colors.teal,
    name: 'Boma Brian',
    time: 07.12,
    description: 'This place was lovely, will love to revisit again.',
    likes: 5.4,
    comment: 20
  ),
  NarrativeModel(
    avatar: Colors.deepPurple,
    image: Colors.blueGrey,
    name: 'James Braide',
    time: 06.12,
    description: 'This place was lovely, will love to revisit again.',
    likes: 2.4,
    comment: 360
  ),
  NarrativeModel(
    avatar: Colors.pink,
    image: Colors.grey,
    name: 'Gbenga Akinola',
    time: 01.42,
    description: 'This place was lovely, will love to revisit again.',
    likes: 1.8,
    comment: 250
  )
];

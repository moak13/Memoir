import 'package:flutter/material.dart';

class ShowCaseModel {
  final Color color;
  final title;
  final subtitle;
  final day;

  ShowCaseModel({
    this.color,
    this.title,
    this.subtitle,
    this.day
  });
}

List<ShowCaseModel> showCaseData = [
  ShowCaseModel(
    color: Colors.red,
    title: 'Abuja',
    subtitle: 'Visit to Jabi Lake Mall',
    day: '3 days'
  ),
  ShowCaseModel(
    color: Colors.yellow,
    title: 'Lagos',
    subtitle: 'Eco Atlantic Tour',
    day: '5 days'
  ),
  ShowCaseModel(
    color: Colors.blue,
    title: 'Abuja',
    subtitle: 'Visit to Lagoon',
    day: '3 days'
  ),
  ShowCaseModel(
    color: Colors.green,
    title: 'Illorin',
    subtitle: 'Visit to Landmark University',
    day: '2 days'
  ),
  ShowCaseModel(
    color: Colors.brown,
    title: 'Asaba',
    subtitle: 'Mesuem',
    day: '3 days'
  )
];
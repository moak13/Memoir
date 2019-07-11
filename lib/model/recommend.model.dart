import 'package:flutter/material.dart';

class RecommendModel {
  final title;
  final subtitle;
  final rating;
  final Color color;

  RecommendModel({this.title, this.subtitle, this.rating, this.color});
}

List<RecommendModel> recommendData = [
  RecommendModel(
    title: 'Tokyo, Japan',
    subtitle: 'Great work inclusive',
    color: Colors.red
  ),
  RecommendModel(
    title: 'Nigeria, Lagos',
    subtitle: 'Great work inclusive',
    color: Colors.green
  ),
  RecommendModel(
    title: 'US, London',
    subtitle: 'Great work inclusive',
    color: Colors.yellow
  ),
  RecommendModel(
    title: 'Tokyo, Japan',
    subtitle: 'Great work inclusive',
    color: Colors.blue
  ),
  RecommendModel(
    title: 'Ghana, Accra',
    subtitle: 'Great work inclusive',
    color: Colors.cyan
  ),
  RecommendModel(
    title: 'Tokyo, Japan',
    subtitle: 'Great work inclusive',
    color: Colors.amber
  ),
  RecommendModel(
    title: 'Tokyo, Japan',
    subtitle: 'Great work inclusive',
    color: Colors.orange
  )
];
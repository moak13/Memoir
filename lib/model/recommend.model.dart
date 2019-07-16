import 'package:flutter/material.dart';

class RecommendModel {
  final title;
  final subtitle;
  final double rating;
  final intro;
  final day;
  final view;
  final Color color;

  RecommendModel(
      {this.title,
      this.subtitle,
      this.rating,
      this.intro,
      this.day,
      this.view,
      this.color});
}

List<RecommendModel> recommendData = [
  RecommendModel(
      title: 'Tokyo, Japan',
      subtitle: 'Great work inclusive',
      rating: 4,
      intro: 'jnjsnjsbcjnjsdn njjsnjnsjnsdjn dnjsnskndjn jndnsfnoavondfkns nvnslljfvnjskn njnsjknfo ndfksnknsk',
      day: '6 Days',
      view: 200,
      color: Colors.red),
  RecommendModel(
      title: 'Nigeria, Lagos',
      subtitle: 'Great work inclusive',
      rating: 3.5,
      intro: 'jnjsnjsbcjnjsdn njjsnjnsjnsdjn dnjsnskndjn jndnsfnoavondfkns nvnslljfvnjskn njnsjknfo ndfksnknsk',
      day: '4 Days',
      view: 2000,
      color: Colors.green),
  RecommendModel(
      title: 'US, London',
      subtitle: 'Great work inclusive',
      rating: 2.3,
      intro: 'jnjsnjsbcjnjsdn njjsnjnsjnsdjn dnjsnskndjn jndnsfnoavondfkns nvnslljfvnjskn njnsjknfo ndfksnknsk',
      day: '9 Days',
      view: 250,
      color: Colors.yellow),
  RecommendModel(
      title: 'Tokyo, Japan',
      subtitle: 'Great work inclusive',
      rating: 1,
      intro: 'jnjsnjsbcjnjsdn njjsnjnsjnsdjn dnjsnskndjn jndnsfnoavondfkns nvnslljfvnjskn njnsjknfo ndfksnknsk',
      day: '22 Days',
      view: 900,
      color: Colors.blue),
  RecommendModel(
      title: 'Ghana, Accra',
      subtitle: 'Great work inclusive',
      rating: 4.5,
      intro: 'jnjsnjsbcjnjsdn njjsnjnsjnsdjn dnjsnskndjn jndnsfnoavondfkns nvnslljfvnjskn njnsjknfo ndfksnknsk',
      day: '12 Days',
      view: 1000,
      color: Colors.cyan),
  RecommendModel(
      title: 'Tokyo, Japan',
      subtitle: 'Great work inclusive',
      rating: 4,
      intro: 'jnjsnjsbcjnjsdn njjsnjnsjnsdjn dnjsnskndjn jndnsfnoavondfkns nvnslljfvnjskn njnsjknfo ndfksnknsk',
      day: '6 Days',
      view: 500,
      color: Colors.amber),
  RecommendModel(
      title: 'Tokyo, Japan',
      subtitle: 'Great work inclusive',
      rating: 2,
      intro: 'jnjsnjsbcjnjsdn njjsnjnsjnsdjn dnjsnskndjn jndnsfnoavondfkns nvnslljfvnjskn njnsjknfo ndfksnknsk',
      day: '14 Days',
      view: 1500,
      color: Colors.orange)
];

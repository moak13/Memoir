import 'package:flutter/material.dart';

class ShowCaseModel {
  final Color color;
  final title;
  final subtitle;
  final day;
  final rating;
  final intro;
  final view;

  ShowCaseModel(
      {this.color,
      this.title,
      this.subtitle,
      this.day,
      this.rating,
      this.intro,
      this.view});
}

List<ShowCaseModel> showCaseData = [
  ShowCaseModel(
      color: Colors.red,
      title: 'Abuja',
      subtitle: 'Visit to Jabi Lake Mall',
      day: '3 days',
      rating: 4,
      intro:
          'hsnjsncjjcnsnjnsc nskcjjnxcnhbsknbcbsbdj njdbjdsjvbfvhdssdhjbhodivbsnnvv bdjncnjnuhjnjibadnbibiandbjbuifoahbb ifnibufnajbvbnjnfsbvinsbdfjbbf sjnnjbnknfivsbfbujnvkisjdnnbibsjbc',
      view: 300),
  ShowCaseModel(
      color: Colors.yellow,
      title: 'Lagos',
      subtitle: 'Eco Atlantic Tour',
      day: '5 days',
      rating: 3,
      intro:
          'jdnsndfiunfanuhfianuinajnjhvjkad aojjijkadsoinvbjbdjcbnajbvbjnadnjvhb jnufanifnvjbnanc lmvknnadnvivnjonsonnbnfvnjnslnkj nkfovojjahbdchbjnknjnbshbhbbhsbbjdjshbj',
      view: 2000),
  ShowCaseModel(
      color: Colors.blue,
      title: 'Abuja',
      subtitle: 'Visit to Lagoon',
      day: '3 days',
      rating: 2,
      intro:
          'sjnfjsnfnweuiufjhfjhuhuwjbdfhfu ihsjfjvfnjdfjdnjdnbfdbsj fbnfbnabiubafuhjdbfjvbfwnbiunfjwnouwiofwuefewnfewhf eufwufwei efuwebifbufri iuhfuhwefw fihnwifhvon iofweih ioefniefbwe uifhwe',
      view: 1500),
  ShowCaseModel(
      color: Colors.green,
      title: 'Illorin',
      subtitle: 'Visit to Landmark University',
      day: '2 days',
      rating: 6,
      intro:
          'jdbnsdnvnjvfn jnjsdvnbsdn jndnskn knfjdnovsndifn dvdnsjinvsoklnom jnsvnjnskv nonfnsknnffsm ofnnvdfnknnfmf ovdunjshnlskvnjfkj onjvonslkvjkovndolm jnjsvnfvjn sjnsndjnvnsdnvj jndvdnsvjnsnbjsvn jjnvjsnnjkvncn',
      view: 750),
  ShowCaseModel(
      color: Colors.brown,
      title: 'Asaba',
      subtitle: 'Mesuem',
      day: '3 days',
      rating: 9,
      intro:
          'jbncsbjfnk knjjskfnjdvna jfjdhifkfsuvhs ihfjkbjddnsn efsvnjnfhon jsonfkjvjnfn ndvsojnoikfls jjsjvnknbnsfsb sjnjsfnsvonkv nsdjfnjnkndjns ndvjnslnvooin ipowefhonsj ndsjvijksn ijlkesihoonsvk isfnlskmvls ijvljsbnlksnjb',
      view: 400)
];

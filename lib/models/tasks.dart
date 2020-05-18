import 'package:flutter/material.dart';

class Tasks {
  const Tasks({@required this.title, @required this.content, this.progress});
  final String title;
  final String content;
  final int progress;

  static const tasks = <Tasks>[
    Tasks(
        title: "Medical LP",
        content: "Make a landing page and mobile app",
        progress: 35),
    Tasks(
        title: "Medical LP",
        content: "Make a landing page and mobile app",
        progress: 35),
    Tasks(
        title: "Medical LP",
        content: "Make a landing page and mobile app",
        progress: 35),
    Tasks(
        title: "Medical LP",
        content: "Make a landing page and mobile app",
        progress: 35),
  ];
}

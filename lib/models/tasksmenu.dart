import 'package:flutter/material.dart';

class TasksMenu {
  const TasksMenu({@required this.title, @required this.tag});
  final String title;
  final String tag;

  static const menu = <TasksMenu>[
    TasksMenu(title: "Recently", tag: "recently"),
    TasksMenu(title: "Today", tag: "today"),
    TasksMenu(title: "Upcoming", tag: "upcoming"),
    TasksMenu(title: "Later", tag: "later"),
  ];
}
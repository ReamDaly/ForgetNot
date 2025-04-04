import 'package:flutter/material.dart';
import 'package:forgetnot/widgets/constant.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  List<Map<String, dynamic>>? desc;
  num? done;
  bool isLast;

  Task({this.icon, this.title, this.bgcolor, this.iconcolor, this.btncolor, this.left, List<Map<String, dynamic>>? desc, this.done, this.isLast = false,}) : desc = desc ?? [];
  static List<Task> generateTasks(){
    return [
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kwhite,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        desc: [{
          'Time': '10:00 AM',
          'Task': 'Meeting with John',
          'Slot': '10:00 AM - 11:00 AM',
          'tlColor': kRedDark,
          'bgColor': kRedLight,
        },
        {
          'Time': '10:00 AM',
          'Task': 'Meeting with Manyta',
          'Slot': '10:00 AM - 11:00 AM',
          'tlColor': kRedDark,
          'bgColor': kRedLight,
        },
        {
          'Time': '11:00 AM',
          'Task': 'Going to Gym',
          'Slot': '11:00 AM - 12:00 PM',
          'tlColor': kRedDark,
          'bgColor': kRedLight,
        },
        {
          'Time': '12:00 PM',
          'Task': 'Study for exam',
          'Slot': '12:00 PM - 1:00 PM',
          'tlColor': Colors.grey.withOpacity(0.3),
          'bgColor': kYellowLight,
        },
        {
          'Time': '1:00 PM',
          'Task': 'Dinner with family',
          'Slot': '1:00 PM - 4:00 PM',
          'tlColor': Colors.grey.withOpacity(0.3),
          'bgColor': kYellowLight,
        },
        ],
        done: 3,
        isLast: false
      ),
      Task(
        icon: Icons.work,
        title: 'Work',
        bgcolor: kYellowLight,
        iconcolor: kYellowDark,
        btncolor: kYellow,
        left: 1,
        desc: [
          {
          'Time': '11:00 AM',
          'Task': 'Meeting with July',
          'Slot': '11:00 AM - 12:00 PM',
          'tlColor': kRedDark,
          'bgColor': kRedLight,
        },
        ],
        done: 4,
        isLast: false
      ),
      Task(
        icon: Icons.favorite_rounded,
        title: 'Health',
        bgcolor: kRedLight,
        iconcolor: kRedDark,
        btncolor: kRed,
        left: 2,
        done: 3,
        isLast: false
      ),
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kwhite,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: true
      ),
    ];
  }
}

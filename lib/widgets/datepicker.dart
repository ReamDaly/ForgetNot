import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weekDays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
  final day = ['11','12','13','14','15','16','17'];
  var selectedDay = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
      ),
      child: ListView.separated(itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedDay = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 25, bottom: 10),
          margin: const EdgeInsets.symmetric(horizontal: 0.5),
          decoration: BoxDecoration(
            color: selectedDay == index ? Colors.grey.withOpacity(0.3) : null,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Text(weekDays[index], style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),)
            ],
          ),
        )
      ), separatorBuilder: (_, index) => const SizedBox(
        width: 10,
      ), itemCount: weekDays.length),
    );
  }
}
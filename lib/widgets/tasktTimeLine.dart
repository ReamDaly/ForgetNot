import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';


class TaskTimeLine extends StatelessWidget {
  final Map<String, dynamic> detail;
  TaskTimeLine(this.detail);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          _buildTimeLine(detail['tlColor']),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                detail['Time'] ?? '',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              (detail['Task'] ?? '').toString().isNotEmpty
              ? _buildCard(
                detail['bgColor'] ?? Colors.white, detail['Task'] ?? '', detail['Slot'] ?? ''
              )
              : _buildCard(Colors.white, '', '' ),
            ],
          ))
        ],
      ),
    );
  }

  Widget _buildCard(Color bgColor, String task, String slot){
    return Container(
      width: 250,
      height: 100,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.all(8),
          child: Text(
            task,
            style: TextStyle(fontSize: 18, color: Colors.grey.shade900, fontWeight: FontWeight.w500),
          ),
          ),
          Padding(padding: const EdgeInsets.all(8),
          child: Text(
            slot,
            style: TextStyle(color: Colors.grey.shade900, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          )
        ],
      ),
    );
  }
  Widget _buildTimeLine(Color color) {
    return Container(
      width: 20,
      height: 115,
      child: TimelineTile(alignment: TimelineAlign.manual,
      lineXY: 0,
      indicatorStyle: IndicatorStyle(
        indicatorXY: 0,
        width: 20,
        indicator: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: color,
              width: 5
            )
          ),
        )
      ),
      afterLineStyle: LineStyle(
        color: color,
        thickness: 2
      ),
      isFirst: true,
      ),
    );
  }
}
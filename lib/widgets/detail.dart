import 'package:flutter/material.dart';
import 'package:forgetnot/modals/Task_modal.dart';
import 'package:forgetnot/widgets/tasktTimeLine.dart';
import 'package:forgetnot/widgets/task_title.dart';
import 'package:forgetnot/widgets/datepicker.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  DetailPage(this.task);

  @override
  Widget build(BuildContext context) {
    final detailList = task.desc ?? [];
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DatePicker(), TaskTitle()
                ],
              ),
            ),
          ),
          detailList.isEmpty
          ? SliverFillRemaining(
            child: Container(
              color: Colors.white,
              height: 200,
              child: Center(
                child: Text(
                'No task yet',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade900)),
              ),
            ),
          )
          : SliverList(delegate: SliverChildBuilderDelegate((context, index) => TaskTimeLine(detailList[index]), childCount: detailList.length)),
        ],
      ),
    );
  }
  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: 90,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
        iconSize: 20,
      ),
      actions: [
        IconButton(onPressed: () {}, 
        icon: const Icon(Icons.more_vert),
        iconSize: 20,
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '${task.title ?? 'No Title'}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'You have ${task.left ?? 0} tasks left to do',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
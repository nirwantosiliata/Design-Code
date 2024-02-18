import 'package:desain_code_app/components/cards/explore_courses_card.dart';
import 'package:desain_code_app/model/course.dart';
import 'package:flutter/material.dart';

class ExploreCoureseList extends StatelessWidget {
  const ExploreCoureseList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: exploreCourses.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 20.0 : 0.0),
            child: ExploreCoureseCard(
              course: exploreCourses[index],
            ),
          );
        },
      ),
    );
  }
}

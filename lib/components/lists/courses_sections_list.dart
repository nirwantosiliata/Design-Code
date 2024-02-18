import 'package:desain_code_app/components/cards/courses_sections_card.dart';
import 'package:desain_code_app/constants.dart';
import 'package:desain_code_app/model/course.dart';
import 'package:flutter/material.dart';

class CourseSectionsList extends StatelessWidget {
  const CourseSectionsList({super.key});

  List<Widget> courseSectionsWidgets() {
    List<Widget> cards = [];

    for (var course in courseSections) {
      cards.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CourseSectionsCard(course: course),
        ),
      );
    }

    cards.add(
      Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Text(
          'No more Sections to view, look\nfor more in our courses',
          style: kCaptionLabelStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: courseSectionsWidgets(),
      ),
    );
  }
}

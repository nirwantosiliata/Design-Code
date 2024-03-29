import 'package:desain_code_app/components/cards/completed_courses_card.dart';
import 'package:desain_code_app/model/course.dart';
import 'package:flutter/material.dart';

class CompletedCoursesList extends StatefulWidget {
  const CompletedCoursesList({super.key});

  @override
  State<CompletedCoursesList> createState() => _CompletedCoursesListState();
}

class _CompletedCoursesListState extends State<CompletedCoursesList> {
  List<Container> indicators = [];
  int currentPage = 0;

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: completedCourses.map(
        (courses) {
          var index = completedCourses.indexOf(courses);
          return Container(
            width: 7,
            height: 7,
            margin: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentPage == index
                  ? const Color(0xFF0971FE)
                  : const Color(0xFFA6AEBD),
            ),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 210,
          width: double.infinity,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return Opacity(
                opacity: currentPage == index ? 1.0 : 0.5,
                child: CompletedCoursesCard(
                  course: completedCourses[index],
                ),
              );
            },
            itemCount: completedCourses.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            controller: PageController(initialPage: 0, viewportFraction: 0.75),
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}

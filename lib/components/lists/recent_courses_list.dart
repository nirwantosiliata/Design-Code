import 'package:desain_code_app/components/cards/recent_course_card.dart';
import 'package:desain_code_app/model/course.dart';
import 'package:desain_code_app/screens/course_screen.dart';
import 'package:flutter/material.dart';

class RecentCoursesList extends StatefulWidget {
  const RecentCoursesList({super.key});

  @override
  State<RecentCoursesList> createState() => _RecentCoursesListState();
}

class _RecentCoursesListState extends State<RecentCoursesList> {
  List<Container> indicators = [];
  int currentPage = 0;

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: recentCourses.map(
        (courses) {
          var index = recentCourses.indexOf(courses);
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
          height: 320,
          width: double.infinity,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseScreen(
                        course: recentCourses[index],
                      ),
                      fullscreenDialog: true,
                    ),
                  );
                },
                child: Opacity(
                    opacity: currentPage == index ? 1.0 : 0.5,
                    child: RecentCoursesCard(course: recentCourses[index])),
              );
            },
            itemCount: recentCourses.length,
            controller: PageController(initialPage: 0, viewportFraction: 0.64),
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}

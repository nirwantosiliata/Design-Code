import 'package:desain_code_app/constants.dart';
import 'package:desain_code_app/model/course.dart';
import 'package:flutter/material.dart';

class ExploreCoureseCard extends StatelessWidget {
  final Course course;
  const ExploreCoureseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Container(
          height: 120,
          width: 280,
          decoration: BoxDecoration(
            gradient: course.background,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.courseSubtitle,
                        style: kCardSubtitleStyle,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        course.courseTitle,
                        style: kCardTitleStyle,
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'asset/illustrations/${course.illustration}',
                      fit: BoxFit.cover,
                      height: 100,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

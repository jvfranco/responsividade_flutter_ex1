import 'package:flutter/material.dart';
import 'package:udemy_clone/breakpoints.dart';
import 'package:udemy_clone/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return GridView.builder(
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16),
          itemCount: 20,
          itemBuilder: (context, index) {
            return const CourseItem();
          },
          // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        );
      },
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://img-b.udemycdn.com/course/480x270/1764438_44b7_8.jpg',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        const Flexible(
          child: AutoSizeText(
            'Criação de Apps Android e iOS com Flutter - Crie 16 Apps',
            minFontSize: 3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        const Text(
          'Daniel Ciolfi',
          style: TextStyle(color: Colors.grey),
        ),
        const Text(
          'R\$22,90',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:udemy_clone/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget buildVerticalAdvantage(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= mobileBreakpoint) {
          return Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16,
              spacing: 8,
              children: [
                Expanded(
                  child: buildHorizontalAdvantage(
                      '+45.000 alunos', 'Didática comprovada'),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: buildHorizontalAdvantage(
                      '+45.000 alunos', 'Didática comprovada'),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: buildHorizontalAdvantage(
                      '+45.000 alunos', 'Didática comprovada'),
                ),
              ],
            ),
          );
        }

        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16,
            spacing: 8,
            children: [
              buildVerticalAdvantage('+45.000 alunos', 'Didática comprovada'),
              buildVerticalAdvantage('+45.000 alunos', 'Didática comprovada'),
              buildVerticalAdvantage('+45.000 alunos', 'Didática comprovada'),
            ],
          ),
        );
      },
    );
  }
}

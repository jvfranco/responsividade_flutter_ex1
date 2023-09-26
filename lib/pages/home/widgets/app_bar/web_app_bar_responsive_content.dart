import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          print(
              'biggest: ${constraints.biggest}, smallest ${constraints.smallest}');
          return Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 45,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 4,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Pesquise alguma coisa aqui.',
                              isCollapsed: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400) ...[
                const SizedBox(width: 32),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  child: const Text('Aprender'),
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  child: const Text('Flutter'),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}

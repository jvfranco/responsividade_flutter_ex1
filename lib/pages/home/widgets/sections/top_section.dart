import 'package:flutter/material.dart';
import 'package:udemy_clone/breakpoints.dart';
import 'package:udemy_clone/pages/home/widgets/custom_search_field.dart/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= mobileBreakpoint) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: SizedBox(
                      width: 450,
                      child: Padding(
                        padding: EdgeInsets.all(22),
                        child: Column(
                          children: [
                            Text(
                              'Aprenda Flutter com este curso',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90. Qualidade garantida.',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            CustomSearchField(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  left: 20,
                  top: 20,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: SizedBox(
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(22),
                        child: Column(
                          children: [
                            Text(
                              'Aprenda Flutter com este curso',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90. Qualidade garantida.',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            CustomSearchField(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network(
                'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aprenda Flutter com este curso',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90. Qualidade garantida.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CustomSearchField(),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:udemy_clone/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.white),
      foregroundColor: Colors.white,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text('Flutter'),
          const SizedBox(width: 32),
          const WebAppBarResponsiveContent(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white, width: 2),
                  foregroundColor: Colors.white,
                ),
                child: const Text('Fazer login')),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white, width: 2),
                foregroundColor: Colors.black,
              ),
              child: const Text('Cadastre-se'),
            ),
          ),
        ],
      ),
    );
  }
}

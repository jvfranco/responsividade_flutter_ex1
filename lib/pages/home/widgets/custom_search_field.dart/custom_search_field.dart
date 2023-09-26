import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      cursorColor: Colors.blue,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintStyle: TextStyle(color: Colors.white),
        hintText: 'Digite alguma busca aqui',
        suffixIcon: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}

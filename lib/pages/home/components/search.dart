import 'package:flutter/material.dart';

class SeachBox extends StatelessWidget {
  const SeachBox({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black45,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(),
          ),
          hintText: 'Search...',
          hintStyle: const TextStyle(
            color: Colors.white38,
          ),
          suffixStyle: const TextStyle(
            color: Colors.white,
          ),
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.white30,
          ),
        ),
      ),
    );
  }
}
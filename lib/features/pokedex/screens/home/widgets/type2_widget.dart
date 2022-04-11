import 'package:flutter/material.dart';

class Type2Widget extends StatelessWidget {
  const Type2Widget({
    Key? key,
    required this.name,
    required this.colorsFundo,
  }) : super(key: key);
  final String name;
  final Color colorsFundo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        decoration: BoxDecoration(
          color: colorsFundo.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

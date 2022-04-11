import 'package:flutter/material.dart';

class TypeWidget extends StatelessWidget {
  const TypeWidget({
    Key? key,
    required this.name,
    required this.paddingBottom,
    required this.paddingLeft,
    required this.withOpacity,
    required this.borderRadius,
    required this.paddingAll,
    required this.fonteSize,
    required this.corFundo,
  }) : super(key: key);
  final double paddingBottom;
  final double paddingLeft;
  final double withOpacity;
  final double borderRadius;
  final double paddingAll;
  final double fonteSize;
  final String name;
  final Color corFundo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingBottom, left: paddingLeft),
      child: Container(
        decoration: BoxDecoration(
          color: corFundo.withOpacity(withOpacity),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Padding(
          padding: EdgeInsets.all(paddingAll),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: fonteSize,
            ),
          ),
        ),
      ),
    );
  }
}

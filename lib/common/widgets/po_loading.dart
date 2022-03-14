import 'package:flutter/material.dart';

class PoLoadng extends StatelessWidget {
  const PoLoadng({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

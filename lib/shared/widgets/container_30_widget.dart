import 'package:flutter/material.dart';

class Container30 extends StatelessWidget {
  final Widget? child;

  Container30({
    this.child,
  });
  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.all(30),
        child: child,
      );
}

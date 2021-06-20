import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  final Widget? child;

  DefaultContainer({this.child});
  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: child,
      );
}

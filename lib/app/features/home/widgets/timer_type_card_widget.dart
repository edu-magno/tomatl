import 'package:flutter/material.dart';

class TimeTypeCardWidget extends StatefulWidget {
  final String title;
  final String description;
  final void Function()? onTap;
  final bool isSelected;

  TimeTypeCardWidget(
      {required this.title,
      required this.description,
      this.onTap,
      required this.isSelected});

  @override
  _TimeTypeCardWidgetState createState() => _TimeTypeCardWidgetState();
}

class _TimeTypeCardWidgetState extends State<TimeTypeCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 70,
        margin: EdgeInsets.all(10.0),
        child: Card(
          color: widget.isSelected ? Color(0xFFC73F3F) : Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      iconSize: 20.0,
                      icon: Icon(Icons.help_outline),
                      onPressed: () => showDialog(
                        context: context,
                        builder: (context) => Dialog(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Padding(
          //       padding:
          //           const EdgeInsets.only(left: 16.0, bottom: 10.0, top: 10.0),
          //       child: Text(
          //         widget.title,
          //         textAlign: TextAlign.left,
          //         style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           fontSize: 18.0,
          //           color: widget.isSelected ? Colors.white : Color(0xFF363636),
          //         ),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(
          //           left: 16.0, bottom: 15.0, right: 15.0),
          //       child: Text(
          //         widget.description,
          //         textAlign: TextAlign.left,
          //         style: widget.isSelected
          //             ? tomatlDefaultTextTheme.bodyText2
          //             : tomatlDefaultTextTheme.bodyText1,
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}

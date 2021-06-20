import 'package:flutter/material.dart';
import 'package:tomatl/shared/theme/tomatl_colors.dart';
import 'package:tomatl/shared/widgets/default_container_widget.dart';
import 'package:tomatl/shared/widgets/vertical_spacing_10.dart';

class TimeTypeCardWidget extends StatefulWidget {
  final String title;
  final int time;
  final int interval;
  final void Function()? onTap;
  final bool isSelected;

  TimeTypeCardWidget({
    required this.title,
    required this.interval,
    required this.time,
    required this.isSelected,
    this.onTap,
  });

  @override
  _TimeTypeCardWidgetState createState() => _TimeTypeCardWidgetState();
}

class _TimeTypeCardWidgetState extends State<TimeTypeCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Card(
          color: widget.isSelected ? TomatlColors.secondary : Colors.white,
          child: Column(
            children: [
              VerticalSpacing10(),
              _buildTitle(),
              VerticalSpacing10(),
              _buildTimeInfo(),
              VerticalSpacing10(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTimeInfo() => DefaultContainer(
        child: Text(
          '${widget.time}/${widget.interval}min',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: widget.isSelected
                ? TomatlColors.primary.shade50
                : TomatlColors.primary,
          ),
        ),
      );

  Widget _buildTitle() => DefaultContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: widget.isSelected
                    ? TomatlColors.primary.shade50
                    : TomatlColors.primary,
              ),
            ),
          ],
        ),
      );
}

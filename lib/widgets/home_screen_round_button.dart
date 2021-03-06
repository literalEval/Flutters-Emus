import 'package:chip_8_flutter/utils/size_config.dart';
import 'package:chip_8_flutter/widgets/custom_painters/round_button_painter.dart';
import 'package:flutter/material.dart';

class HomeScreenRoundButton extends StatelessWidget {
  const HomeScreenRoundButton({
    required this.onPressed,
    required this.isPower,
    this.isRunning = false,
    Key? key,
  }) : super(key: key);

  final Function() onPressed;
  final bool isPower;
  final bool isRunning;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CustomPaint(
        size: Size(
          SizeConfig.widthPercent * 12,
          SizeConfig.widthPercent * 12,
        ),
        painter: RoundButtonPainter(
          isPower: isPower,
          isRunning: isRunning,
        ),
      ),
    );
  }
}

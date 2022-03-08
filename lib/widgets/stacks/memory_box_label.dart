import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:flutter/material.dart';

class MemoryBoxLabel extends StatelessWidget {
  const MemoryBoxLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CurvedContainer(
          color: AppColors.purple,
          height: 290,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'MemoryBox',
              style: TextStyle(
                fontSize: 49,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: AppColors.whiteText,
              ),
            ),
            Text(
              'Твой голос всегда рядом',
              style: TextStyle(
                  color: AppColors.whiteText, fontSize: 14, letterSpacing: 0.5),
            ),
          ],
        ),
      ],
      alignment: Alignment.center,
    );
  }
}

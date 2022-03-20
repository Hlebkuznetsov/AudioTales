import 'package:audio_tales/pages/other/subscription_page.dart';
import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

class SubscriptionContainer extends StatelessWidget {
  const SubscriptionContainer({
    Key? key,
    required this.amount,
    required this.iconButton,
    required this.period,
  }) : super(key: key);

  final int amount;
  final IconButton iconButton;
  final String period;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: SubscriptionPage.boxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Text(
              '$amountр',
              style: TextStyle(fontSize: 21, color: AppColors.blackText),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 20),
            child: Text(
              period,
              style: TextStyle(fontSize: 14, color: AppColors.blackText),
            ),
          ),
          iconButton
        ],
      ),
    );
  }
}

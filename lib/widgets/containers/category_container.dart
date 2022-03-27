import 'package:audio_tales/resources/colors.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.blackText.withOpacity(0.1),
                blurRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
            borderRadius: BorderRadius.circular(18),
            color: AppColors.blackText,
          ),
          child: Center(child: Text('Подборка...')),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                flex: 1,
                child: Text(
                  'Сказка о малыше Кокки',
                  style: TextStyle(
                      color: AppColors.whiteText, fontWeight: FontWeight.w600),
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '7 аудио',
                      style:
                          TextStyle(color: AppColors.whiteText, fontSize: 12),
                    ),
                    Text(
                      '2:30 часа',
                      style:
                          TextStyle(color: AppColors.whiteText, fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

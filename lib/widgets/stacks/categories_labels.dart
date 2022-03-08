import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:flutter/material.dart';

class CategoriessLabels extends StatelessWidget {
  const CategoriessLabels({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CurvedContainer(
          color: AppColors.purple,
          height: 230,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Подборки',
                    style: TextStyle(
                        fontSize: 21,
                        color: AppColors.whiteText,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.1),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Открыть все',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.whiteText,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Здесь будет\n твой набор\n сказок',
                        style: TextStyle(
                            color: AppColors.whiteText,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Добавить',
                          style: TextStyle(
                            color: AppColors.whiteText,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackText.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.green.withOpacity(0.85),
                  ),
                  height: 240,
                  width: 168,
                ),
                SizedBox(
                  width: 17,
                ),
                Container(
                  height: 240,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Center(
                          child: Text(
                            'Тут',
                            style: TextStyle(
                                color: AppColors.whiteText,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.blackText.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.orange.withOpacity(0.85),
                        ),
                        height: 110,
                        width: 168,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            ' И тут',
                            style: TextStyle(
                                color: AppColors.whiteText,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.blackText.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.blue.withOpacity(0.85),
                        ),
                        height: 110,
                        width: 168,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}

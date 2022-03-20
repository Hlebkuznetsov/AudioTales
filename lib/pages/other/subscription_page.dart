import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:audio_tales/widgets/containers/subscription_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  static const routeName = '/subscription_page';

  static final boxDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: AppColors.blackText.withOpacity(0.2),
        blurRadius: 11,
        offset: Offset(0, 3),
      ),
    ],
    borderRadius: BorderRadius.circular(25),
    color: AppColors.background,
  );

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  bool firstSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(
            'Подписка',
            style: TextStyle(
              fontSize: 31,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
              color: AppColors.whiteText,
            ),
          ),
        ),
        backgroundColor: AppColors.purple,
        bottomOpacity: 0.0,
        elevation: 0.0,
        // leading: DrawerButton(),
      ),
      body: Stack(
        children: [
          CurvedContainer(
            color: AppColors.purple,
            height: 230,
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Расширь возможности',
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteText,
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 115, left: 7, right: 7),
                  child: Container(
                    width: double.infinity,
                    decoration: SubscriptionPage.boxDecoration,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Выбери подписку',
                          style: TextStyle(
                              fontSize: 21,
                              letterSpacing: 0.7,
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackText),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, right: 6),
                                  child: SubscriptionContainer(
                                    amount: 300,
                                    period: 'в месяц',
                                    iconButton: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          firstSelected = true;
                                        });
                                      },
                                      icon: firstSelected
                                          ? SvgPicture.asset(AppImages.selected)
                                          : SvgPicture.asset(
                                              AppImages.unselected),
                                      iconSize: 42,
                                    ),
                                  )),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 6, right: 10),
                                child: SubscriptionContainer(
                                  amount: 1800,
                                  period: 'в год',
                                  iconButton: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        firstSelected = false;
                                      });
                                    },
                                    icon: firstSelected
                                        ? SvgPicture.asset(AppImages.unselected)
                                        : SvgPicture.asset(AppImages.selected),
                                    iconSize: 42,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Что дает подписка:',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(AppIcons.infinity),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Неограниченая память',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(AppIcons.cloud),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Все файлы хранятся в облаке',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(AppIcons.download),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        'Возможность скачивать без ограничений',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Подписаться на ${firstSelected ? 'месяц' : 'год'} ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(280, 55),
                              primary: AppColors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

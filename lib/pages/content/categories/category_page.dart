import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:audio_tales/widgets/buttons/category_actions.dart';
import 'package:audio_tales/widgets/containers/category_picture.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key? key}) : super(key: key);

  static const routeName = '/category_page';

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isVisible = false;
  final textKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leadingWidth: 75,
        actions: [
          CategoryActionsButton(),
        ],
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SvgPicture.asset(AppImages.backButton),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CurvedContainer(
                  color: AppColors.green,
                  height: 230,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Сказка о малыше Кокки',
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColors.background,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Stack(children: [
                        CategoryPicture(),
                        Positioned(
                          top: 16,
                          left: 16,
                          child: Text(
                            '24.09.20',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.background,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 16,
                          left: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '7 аудио',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.background,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                '2:30 часа',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.background,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 16,
                          right: 16,
                          child: Container(
                            width: 160,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppColors.background.withOpacity(0.15),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: SvgPicture.asset(
                                    AppImages.play,
                                    color: AppColors.background,
                                    height: 32,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Запустить все',
                                  style: TextStyle(
                                    color: AppColors.whiteText,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      Visibility(
                        visible: true,
                        child: Container(
                          height: isVisible
                              ? textKey.currentState?.context.size?.height
                              : 60,
                          child: Text(
                            'Сказка о маленьком принце. Он родилсяСказка о маленьком принце. Он родился в старой деревне и задавался всего-лишСказка о маленьком принце. Он родился в старой деревне и задавался всего-лишь одним вопросом ь одним вопросом  в старой деревне и задавался всего-лишь одним вопросом - “Кто я такой?”.Он познакомился со старенькой бабушкой, которая рассказала ему легенду о малыше Кокки...',
                            key: textKey,
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Text(
                          isVisible ? 'Свернуть' : 'Подробнее',
                          style: TextStyle(
                            color: AppColors.blackText.withOpacity(0.5),
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

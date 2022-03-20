import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/resources/icons.dart';
import 'package:audio_tales/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentlyDeletedList extends StatelessWidget {
  RecentlyDeletedList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(bottom: 20),
        itemCount: 15,
        itemBuilder: _buildDatedList);
  }

  Widget _buildDatedList(context, index) {
    if (index == 0) {
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
            child: Text(
          '12.02.20',
          style: TextStyle(color: AppColors.blackText.withOpacity(0.5)),
        )),
      );
    } else
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 4,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.blackText.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(30),
          ),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AppImages.play,
                    color: AppColors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Text('Название',
                          style: TextStyle(color: AppColors.blackText)),
                    ),
                    Text(
                      '30 минут',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.blackText.withOpacity(0.6)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppIcons.delete),
                ),
              ),
            ],
          ),
        ),
      );
  }
}

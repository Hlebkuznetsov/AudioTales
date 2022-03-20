import 'package:audio_tales/resources/colors.dart';
import 'package:audio_tales/widgets/buttons/actions_button.dart';
import 'package:audio_tales/widgets/buttons/drawer_button.dart';
import 'package:audio_tales/widgets/containers/curved_container.dart';
import 'package:audio_tales/widgets/lists/recently_deleted_list.dart';
import 'package:flutter/material.dart';

class RecentlyDeletedPage extends StatelessWidget {
  const RecentlyDeletedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            ActionsButton(
              color: AppColors.whiteText,
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              'Недавно',
              style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
                color: AppColors.whiteText,
              ),
            ),
          ),
          backgroundColor: AppColors.blue,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: DrawerButton()),
      body: Column(
        children: [
          Stack(
            children: [
              CurvedContainer(
                color: AppColors.blue,
                height: 160,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Удаленные',
                  style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                    color: AppColors.whiteText,
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.only(bottom: 90),
                child: RecentlyDeletedList()),
          ),
        ],
      ),
    );
  }
}

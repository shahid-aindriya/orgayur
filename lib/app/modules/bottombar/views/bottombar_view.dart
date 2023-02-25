import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:orgayur/app/colors/colors.dart';
import 'package:orgayur/app/modules/home/views/home_view.dart';

import 'package:orgayur/app/modules/market_place/views/market_place_view.dart';
import 'package:orgayur/app/modules/orgayur_home/views/orgayur_home_view.dart';
import 'package:orgayur/app/modules/service/views/service_view.dart';
import 'package:orgayur/app/modules/user_profile/views/user_profile_view.dart';

import '../controllers/bottombar_controller.dart';

class BottombarView extends GetView<BottombarController> {
  static ValueNotifier<int> selectedPageIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    final pages = [
      HomeView(),
      ServiceView(),
      OrgayurHomeView(),
      MarketPlaceView(),
      UserProfileView()
    ];
    return Scaffold(
      backgroundColor: bgcolor,
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: BottombarView.selectedPageIndex,
        builder: (BuildContext context, int updatedIndex, Widget? _) {
          return ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            child: BottomNavigationBar(
                elevation: 19,
                unselectedItemColor: Color.fromARGB(
                  255,
                  181,
                  181,
                  181,
                ),
                selectedItemColor: Color.fromARGB(255, 99, 145, 118),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                currentIndex: updatedIndex,
                onTap: ((newIndex) {
                  BottombarView.selectedPageIndex.value = newIndex;
                }),
                type: BottomNavigationBarType.shifting,
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/bottom_bar_first.png"),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/bottom_bar_second.png"),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        size: 45,
                        AssetImage("assets/images/bottom_bar_third.png"),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/bottom_bar_fourth.png"),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/bottom_bar_fifth.png"),
                      ),
                      label: '')
                ]),
          );
        },
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageIndex,
        builder: (BuildContext context, int updatedIndex, Widget? _) {
          return pages[updatedIndex];
        },
      ),
    );
  }
}

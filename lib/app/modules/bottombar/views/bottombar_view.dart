import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:orgayur/app/colors/colors.dart';
import 'package:orgayur/app/modules/e_commerce/views/e_commerce_view.dart';
import 'package:orgayur/app/modules/knowledge_base/views/knowledge_base_view.dart';
import 'package:orgayur/app/modules/machinery/views/machinery_view.dart';
import 'package:orgayur/app/modules/market_place/views/market_place_view.dart';
import 'package:orgayur/app/modules/services/views/services_view.dart';

import '../controllers/bottombar_controller.dart';

class BottombarView extends GetView<BottombarController> {
  static ValueNotifier<int> selectedPageIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    final pages = [
      MarketPlaceView(),
      ECommerceView(),
      MachineryView(),
      ServicesView(),
      KnowledgeBaseView()
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
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/bxs_home-alt-2.png"),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/bxs_cart.png"),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/Gear.png"),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/Wrench.png"),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/ri_plant-fill.png"),
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

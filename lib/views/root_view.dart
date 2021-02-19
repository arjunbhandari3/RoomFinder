import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:roomfinder/core/controllers/auth_controller.dart';
import 'package:roomfinder/core/controllers/root_controller.dart';

import 'package:roomfinder/views/home_view.dart';
import 'package:roomfinder/views/login_view.dart';
import 'package:roomfinder/views/messages_view.dart';
import 'package:roomfinder/views/post_view.dart';
import 'package:roomfinder/views/profile_view.dart';
import 'package:roomfinder/views/search_view.dart';

class RootView extends GetView<AuthController> {
  final List<Widget> bodyContent = [
    HomeView(),
    SearchView(),
    PostView(),
    MessagesView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (controller.user == null)
          ? LoginView()
          : GetBuilder<RootController>(
              builder: (rootController) => WillPopScope(
                onWillPop: () async => false,
                child: SafeArea(
                  child: Scaffold(
                    body: Obx(
                      () => Center(
                        child:
                            bodyContent.elementAt(rootController.selectedIndex),
                      ),
                    ),
                    bottomNavigationBar: Obx(
                      () => BottomAppBar(
                        child: BottomNavigationBar(
                          type: BottomNavigationBarType.fixed,
                          selectedItemColor: Theme.of(context).primaryColor,
                          selectedFontSize: 14,
                          unselectedFontSize: 13,
                          items: [
                            BottomNavigationBarItem(
                              icon: Icon(Icons.home),
                              label: "Home",
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.search),
                              label: "Search",
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.add),
                              label: " ",
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.message),
                              label: "Messages",
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.person),
                              label: "Profile",
                            ),
                          ],
                          currentIndex: rootController.selectedIndex,
                          onTap: (index) =>
                              rootController.selectedIndex = index,
                        ),
                        notchMargin: 5,
                        clipBehavior: Clip.antiAlias,
                        color: Theme.of(context).primaryColor,
                        shape: CircularNotchedRectangle(),
                      ),
                    ),
                    floatingActionButtonAnimator:
                        FloatingActionButtonAnimator.scaling,
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.centerDocked,
                    floatingActionButton: FloatingActionButton(
                      elevation: 2.0,
                      child: Icon(
                        Icons.add,
                        size: 35,
                        color: Colors.white,
                      ),
                      onPressed: () => rootController.selectedIndex = 2,
                    ),
                  ),
                ),
              ),
            );
    });
  }
}

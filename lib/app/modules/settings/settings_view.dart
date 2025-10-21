import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import 'settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = controller.themeController;
    return Scaffold(
      appBar: AppBar(title:  Text('Settings')),
      body: Center(
        child: Obx(() => SwitchListTile(
          title: Text(
            themeController.isDarkMode ? 'Dark Mode' : 'Light Mode',
            style:  TextStyle(fontSize: 18),
          ),
          value: themeController.isDarkMode,
          onChanged: (value) => themeController.toggleTheme(value),
        )),
      ),
      bottomNavigationBar: navBar(context, 2),
    );
  }

  Widget navBar(BuildContext context, int index) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (i) {
        switch (i) {
          case 0:
            Get.offAllNamed(Routes.home);
            break;
          case 1:
            Get.offAllNamed(Routes.profile);
            break;
          case 2:
            Get.offAllNamed(Routes.settings);
            break;
        }
      },
      items:  [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }
}

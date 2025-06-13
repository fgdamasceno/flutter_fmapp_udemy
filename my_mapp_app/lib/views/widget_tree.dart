import 'package:flutter/material.dart';
import 'package:my_mapp_app/data/constants.dart';
import 'package:my_mapp_app/data/notifiers.dart';
import 'package:my_mapp_app/views/pages/home_page.dart';
import 'package:my_mapp_app/views/pages/profile_page.dart';
import 'package:my_mapp_app/views/pages/settings_page.dart';
import 'package:my_mapp_app/views/widgets/navbar_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Mapp Udemy App"),
        actions: [
          IconButton(
            onPressed: () async {
              isDakModeNotifier.value = !isDakModeNotifier.value;
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.setBool(
                KConstants.themeModeKey,
                isDakModeNotifier.value,
              );
            },
            icon: ValueListenableBuilder(
              valueListenable: isDakModeNotifier,
              builder: (context, isDarkMode, child) {
                return isDarkMode
                    ? Icon(Icons.light_mode)
                    : Icon(Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage(title: "Settings Page");
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}

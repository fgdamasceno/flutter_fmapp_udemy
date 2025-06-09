import 'package:flutter/material.dart';
import 'package:my_mapp_app/data/notifiers.dart';
import 'package:my_mapp_app/views/pages/home_page.dart';
import 'package:my_mapp_app/views/pages/profile_page.dart';
import 'package:my_mapp_app/views/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Mapp App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              isDakModeNotifier.value = !isDakModeNotifier.value;
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

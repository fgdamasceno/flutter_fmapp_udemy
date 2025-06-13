import 'package:flutter/material.dart';
import 'package:my_mapp_app/data/notifiers.dart';
import 'package:my_mapp_app/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage("assets/images/bg.jpg"),
          ),
          ListTile(
            title: Text("Log out"),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

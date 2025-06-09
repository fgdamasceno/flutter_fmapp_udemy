import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = "i1";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DropdownButton(
              value: menuItem,
              items: [
                DropdownMenuItem(value: "i1", child: Text("Item 1")),
                DropdownMenuItem(value: "i2", child: Text("Item 2")),
                DropdownMenuItem(value: "i3", child: Text("Item 3")),
                DropdownMenuItem(value: "i4", child: Text("Item 4")),
                DropdownMenuItem(value: "i5", child: Text("Item 5")),
              ],
              onChanged: (String? value) {
                setState(() {
                  menuItem = value;
                });
              },
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                label: Text("Your First Name"),
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () => setState(() {}),
            ),
            Text(controller.text),
            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              tristate: true,
              title: Text("Check me"),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              title: Text("Switch me"),
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Slider.adaptive(
              divisions: 12,
              max: 60.0,
              value: sliderValue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            InkWell(
              splashColor: Colors.tealAccent,
              onTap: () {
                debugPrint("InkWell Box was clicked");
              },
              child: Container(
                height: 240,
                width: double.infinity,
                color: Colors.white12,
              ),
            ),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                debugPrint("Image was clicked");
              },
              child: Image.asset("assets/images/bg.jpg"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text("Click Me"),
            ),
            FilledButton(onPressed: () {}, child: Text("Click me too")),
            TextButton(onPressed: () {}, child: Text("Click me here")),
            OutlinedButton(onPressed: () {}, child: Text("Don't forget me")),
            CloseButton(),
            BackButton(),
          ],
        ),
      ),
    );
  }
}

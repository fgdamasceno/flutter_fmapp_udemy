import 'package:flutter/material.dart';
import 'package:my_mapp_app/data/constants.dart';
import 'package:my_mapp_app/views/pages/course_page.dart';
import 'package:my_mapp_app/views/widgets/container_widget.dart';
import 'package:my_mapp_app/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titleList = [
      KValue.basicLayout,
      KValue.clenaUI,
      KValue.fixBugs,
      KValue.keyComcepts,
      KValue.packages,
    ];

    List<String> descriptionList = [
      KDescription.basicDescription,
      KDescription.cleanUiDescription,
      KDescription.fixBugsDescription,
      KDescription.keyConceptsDescription,
      KDescription.packagesDescription,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0),
            HeroWidget(title: "Home Page", nextPage: CoursePage()),
            SizedBox(height: 5.0),
            ...List.generate(titleList.length, (index) {
              return ContainerWidget(
                title: titleList[index],
                description: descriptionList[index],
              );
            }),
          ],
        ),
      ),
    );
  }
}

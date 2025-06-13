import 'package:flutter/material.dart';
import 'package:my_mapp_app/views/widgets/hero_widget.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(children: [HeroWidget(title: "Course")]),
        ),
      ),
    );
  }
}

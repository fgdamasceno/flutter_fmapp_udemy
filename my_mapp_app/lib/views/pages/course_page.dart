import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_mapp_app/data/classes/activity_class.dart';
import 'package:my_mapp_app/views/widgets/hero_widget.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  Future<Activity>? _activityFuture;
  @override
  void initState() {
    super.initState();
    _fetchRandomActivity();
  }

  void _fetchRandomActivity() {
    setState(() {
      _activityFuture = getData();
    });
  }

  Future<Activity> getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');
    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Activity.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    } else {
      throw Exception("Failed to load activity");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: _activityFuture,
        builder: (context, AsyncSnapshot snapshot) {
          Widget widget;
          if (snapshot.connectionState == ConnectionState.waiting) {
            widget = CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            Activity activity = snapshot.data;
            widget = Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    HeroWidget(title: "Course"),
                    SizedBox(height: 20.0),
                    Text("Activity: ${activity.activity}"),
                    Text("Availability: ${activity.availability}"),
                    Text("Type: ${activity.type}"),
                    Text("Participants: ${activity.participants}"),
                    Text("Price: ${activity.price}"),
                    Text("Accessibility: ${activity.accessibility}"),
                    Text("Duration: ${activity.duration}"),
                    Text("Kid Friendly: ${activity.kidFriendly}"),
                    Text("Link: ${activity.link}"),
                    Text("Key: ${activity.key}"),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: _fetchRandomActivity,
                      child: Text("Fetch Another Activity"),
                    ),
                  ],
                ),
              ),
            );
          } else {
            widget = Center(child: Text("Error while loading the page!"));
          }
          return widget;
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.teal,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  spacing: 4.0,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        child: Text(
                          "Expanded: all available space",
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        color: Colors.red,
                        child: Text(
                          "A Text",
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.red)),
                      Expanded(child: Container(color: Colors.green)),
                      Expanded(child: Container(color: Colors.blue)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
              child: Center(
                child: Container(
                  color: Colors.white,
                  child: Flexible(
                    child: Text(
                      "Flexible: only the necessary space",
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

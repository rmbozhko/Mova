import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: IconButton(
            icon: Icon(
              Icons.menu_sharp,
              color: Colors.white,
              size: 45.0,
            ), onPressed: () => print("menu is invoked"),
          ),
        ),
        title: Center(
          child: Text(
            "Про Лепетуна",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: GestureDetector(
              child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.yellow[600],
                  size: 40.0,
                ),
                onPressed: () => print("home is invoked"),
              ),
            ),
          ),
        ],
      ),
      body: null,
    );
  }
}

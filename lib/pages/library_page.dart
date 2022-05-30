import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

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
            ),
            onPressed: () => print("menu is invoked"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: GestureDetector(
              child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.yellow[600],
                  size: 40.0,
                ), onPressed: () => print("home is invoked"),
              ),
            ),
          ),
        ],
        title: Center(
          child: Text(
            'Бібліотека',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
      body: null,
    );
  }
}

import 'package:flutter/material.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 35.0,
            ), onPressed: () => print("back arrow is invoked"),
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
        title: Center(
          child: Text(
            'Фразеологізми',
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

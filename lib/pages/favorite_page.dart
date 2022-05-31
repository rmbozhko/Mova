import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

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
            ),
            onPressed: () => print("back arrow is invoked"),
          ),
        ),
        title: Center(
          child: Text(
            "Вибране",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            child: IconButton(
              padding: const EdgeInsets.only(right: 4.0),
              icon: Icon(
                Icons.home,
                color: Colors.yellow[600],
                size: 40.0,
              ),
              onPressed: () => print("home is invoked"),
            ),
          )
        ],
      ),
      body: null,
    );
  }
}

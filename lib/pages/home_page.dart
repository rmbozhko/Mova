import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

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
          GestureDetector(
            child: IconButton(
              icon: Icon(
                Icons.search_rounded,
                color: Colors.white,
                size: 38.0,
              ),
              onPressed: () => showSearch(
                  context: context,
                  delegate: CardsSearchDelegate()
              ),
            )
          ),
        ],
        surfaceTintColor: Colors.yellowAccent,
        shadowColor: Colors.green,
      ),
      body: null,
    );
  }
}

class CardsSearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    "Card 1", "Card 2", "Card 3", "Card 4", "Card 5",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      icon: const Icon(Icons.clear_rounded),
      onPressed: () =>  {
        if (query.isEmpty) {
          close(context, null)
        } else {
          query = ''
        }
        },
    )
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
    icon: const Icon(Icons.arrow_back_rounded),
    onPressed: () => close(context, null),
  );

  @override
  Widget buildResults(BuildContext context) => Container(
    child: Center(
      child: Text(
        query,
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 60,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}



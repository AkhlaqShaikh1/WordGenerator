import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SavedPage extends StatelessWidget {
  final Set<WordPair> saved;
  const SavedPage({Key? key, required this.saved}) : super(key: key);
  static String id = "/saved_page";

  @override
  Widget build(BuildContext context) {
    final tiles = saved.map(
      (pair) {
        return ListTile(
          title: Text(
            pair.asPascalCase,
            style: bigFont.copyWith(fontSize: 20),
          ),
        );
      },
    );
    final div = tiles.isNotEmpty
        ? ListTile.divideTiles(context: context, tiles: tiles).toList()
        : <Widget>[];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Saved Suggestions"),
      ),
      body: ListView(
        children: div,
      ),
    );
  }
}

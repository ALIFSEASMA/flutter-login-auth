import 'package:flutter/material.dart';

class VocabularySearchScreen extends StatelessWidget {
  final Map<String, Map<String, dynamic>> vocabulary;

  VocabularySearchScreen({required this.vocabulary});

  @override
  Widget build(BuildContext context) {
    final words = vocabulary.keys.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vocabulary Search'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          final word = words[index];
          final meanings = vocabulary[word]?['meaning'] as Map<String, String>;

          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ExpansionTile(
              title: Text(
                word.toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              children:
                  meanings.entries.map((e) {
                    return ListTile(title: Text('${e.key}: ${e.value}'));
                  }).toList(),
            ),
          );
        },
      ),
    );
  }
}

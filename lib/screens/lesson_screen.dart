import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class LessonScreen extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  final Map<String, Map<String, dynamic>> vocabulary = {
    'hello': {
      'meaning': {
        'spanish': 'Hola',
        'german': 'Hallo',
        'korean': '안녕하세요',
        'english': 'Hello',
      },
    },
    'peace': {
      'meaning': {
        'spanish': 'Paz',
        'german': 'Frieden',
        'korean': '평화',
        'english': 'Peace',
      },
    },
    'love': {
      'meaning': {
        'spanish': 'Amor',
        'german': 'Liebe',
        'korean': '사랑',
        'english': 'Love',
      },
    },
    'friend': {
      'meaning': {
        'spanish': 'Amigo',
        'german': 'Freund',
        'korean': '친구',
        'english': 'Friend',
      },
    },
    'thank you': {
      'meaning': {
        'spanish': 'Gracias',
        'german': 'Danke',
        'korean': '감사합니다',
        'english': 'Thank you',
      },
    },
    'goodbye': {
      'meaning': {
        'spanish': 'Adiós',
        'german': 'Auf Wiedersehen',
        'korean': '안녕히 가세요',
        'english': 'Goodbye',
      },
    },
    'morning': {
      'meaning': {
        'spanish': 'Mañana',
        'german': 'Morgen',
        'korean': '아침',
        'english': 'Morning',
      },
    },
    'night': {
      'meaning': {
        'spanish': 'Noche',
        'german': 'Nacht',
        'korean': '밤',
        'english': 'Night',
      },
    },
    'school': {
      'meaning': {
        'spanish': 'Escuela',
        'german': 'Schule',
        'korean': '학교',
        'english': 'School',
      },
    },
    'book': {
      'meaning': {
        'spanish': 'Libro',
        'german': 'Buch',
        'korean': '책',
        'english': 'Book',
      },
    },
    'food': {
      'meaning': {
        'spanish': 'Comida',
        'german': 'Essen',
        'korean': '음식',
        'english': 'Food',
      },
    },
    'happy': {
      'meaning': {
        'spanish': 'Feliz',
        'german': 'Glücklich',
        'korean': '행복한',
        'english': 'Happy',
      },
    },
    'water': {
      'meaning': {
        'spanish': 'Agua',
        'german': 'Wasser',
        'korean': '물',
        'english': 'Water',
      },
    },
    'family': {
      'meaning': {
        'spanish': 'Familia',
        'german': 'Familie',
        'korean': '가족',
        'english': 'Family',
      },
    },
    'help': {
      'meaning': {
        'spanish': 'Ayuda',
        'german': 'Hilfe',
        'korean': '도움',
        'english': 'Help',
      },
    },
    // Aap yahan baaki 35 words bhi isi format mein daal sakte hain...
  };

  Future<void> _speak(String word, String lang) async {
    switch (lang.toLowerCase()) {
      case 'spanish':
        await flutterTts.setLanguage('es-ES');
        break;
      case 'german':
        await flutterTts.setLanguage('de-DE');
        break;
      case 'korean':
        await flutterTts.setLanguage('ko-KR');
        break;
      default:
        await flutterTts.setLanguage('en-US');
    }
    await flutterTts.speak(word);
  }

  @override
  Widget build(BuildContext context) {
    // Available words list
    final availableWords = vocabulary.keys.toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Vocabulary Lesson')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display available words at the top
            Text(
              'Available words:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 4,
              children:
                  availableWords
                      .map(
                        (word) => Chip(
                          label: Text(word),
                          backgroundColor: Colors.indigo.shade100,
                        ),
                      )
                      .toList(),
            ),
            const SizedBox(height: 16),

            // Expanded list of vocabulary cards
            Expanded(
              child: ListView(
                children:
                    vocabulary.entries.map((entry) {
                      final word = entry.key;
                      final meanings =
                          entry.value['meaning'] as Map<String, String>;

                      return Card(
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: ExpansionTile(
                          title: Text(
                            word.toUpperCase(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          children:
                              meanings.entries.map((e) {
                                return ListTile(
                                  title: Text('${e.key}: ${e.value}'),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.volume_up),
                                    onPressed: () => _speak(e.value, e.key),
                                  ),
                                );
                              }).toList(),
                        ),
                      );
                    }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

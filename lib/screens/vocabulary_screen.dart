import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class VocabularyScreen extends StatefulWidget {
  const VocabularyScreen({Key? key}) : super(key: key);

  @override
  _VocabularyScreenState createState() => _VocabularyScreenState();
}

class _VocabularyScreenState extends State<VocabularyScreen> {
  final TextEditingController _searchController = TextEditingController();
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
    'friend': {
      'meaning': {
        'spanish': 'Amigo',
        'german': 'Freund',
        'korean': '친구',
        'english': 'Friend',
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
    'pen': {
      'meaning': {
        'spanish': 'Bolígrafo',
        'german': 'Stift',
        'korean': '펜',
        'english': 'Pen',
      },
    },
    'apple': {
      'meaning': {
        'spanish': 'Manzana',
        'german': 'Apfel',
        'korean': '사과',
        'english': 'Apple',
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
    'sad': {
      'meaning': {
        'spanish': 'Triste',
        'german': 'Traurig',
        'korean': '슬픈',
        'english': 'Sad',
      },
    },
    'mother': {
      'meaning': {
        'spanish': 'Madre',
        'german': 'Mutter',
        'korean': '어머니',
        'english': 'Mother',
      },
    },
    'father': {
      'meaning': {
        'spanish': 'Padre',
        'german': 'Vater',
        'korean': '아버지',
        'english': 'Father',
      },
    },
    'cat': {
      'meaning': {
        'spanish': 'Gato',
        'german': 'Katze',
        'korean': '고양이',
        'english': 'Cat',
      },
    },
    'dog': {
      'meaning': {
        'spanish': 'Perro',
        'german': 'Hund',
        'korean': '개',
        'english': 'Dog',
      },
    },
    'sun': {
      'meaning': {
        'spanish': 'Sol',
        'german': 'Sonne',
        'korean': '태양',
        'english': 'Sun',
      },
    },
    'moon': {
      'meaning': {
        'spanish': 'Luna',
        'german': 'Mond',
        'korean': '달',
        'english': 'Moon',
      },
    },
    'star': {
      'meaning': {
        'spanish': 'Estrella',
        'german': 'Stern',
        'korean': '별',
        'english': 'Star',
      },
    },
    'sky': {
      'meaning': {
        'spanish': 'Cielo',
        'german': 'Himmel',
        'korean': '하늘',
        'english': 'Sky',
      },
    },
    'earth': {
      'meaning': {
        'spanish': 'Tierra',
        'german': 'Erde',
        'korean': '지구',
        'english': 'Earth',
      },
    },
    'car': {
      'meaning': {
        'spanish': 'Coche',
        'german': 'Auto',
        'korean': '자동차',
        'english': 'Car',
      },
    },
    'bus': {
      'meaning': {
        'spanish': 'Autobús',
        'german': 'Bus',
        'korean': '버스',
        'english': 'Bus',
      },
    },
    'train': {
      'meaning': {
        'spanish': 'Tren',
        'german': 'Zug',
        'korean': '기차',
        'english': 'Train',
      },
    },
    'teacher': {
      'meaning': {
        'spanish': 'Maestro',
        'german': 'Lehrer',
        'korean': '선생님',
        'english': 'Teacher',
      },
    },
    'student': {
      'meaning': {
        'spanish': 'Estudiante',
        'german': 'Schüler',
        'korean': '학생',
        'english': 'Student',
      },
    },
    // Add more to reach 50
    'city': {
      'meaning': {
        'spanish': 'Ciudad',
        'german': 'Stadt',
        'korean': '도시',
        'english': 'City',
      },
    },
    'village': {
      'meaning': {
        'spanish': 'Pueblo',
        'german': 'Dorf',
        'korean': '마을',
        'english': 'Village',
      },
    },
    'computer': {
      'meaning': {
        'spanish': 'Computadora',
        'german': 'Computer',
        'korean': '컴퓨터',
        'english': 'Computer',
      },
    },
    'phone': {
      'meaning': {
        'spanish': 'Teléfono',
        'german': 'Telefon',
        'korean': '전화',
        'english': 'Phone',
      },
    },
    'music': {
      'meaning': {
        'spanish': 'Música',
        'german': 'Musik',
        'korean': '음악',
        'english': 'Music',
      },
    },
    'movie': {
      'meaning': {
        'spanish': 'Película',
        'german': 'Film',
        'korean': '영화',
        'english': 'Movie',
      },
    },
    'dance': {
      'meaning': {
        'spanish': 'Baile',
        'german': 'Tanz',
        'korean': '춤',
        'english': 'Dance',
      },
    },
    'game': {
      'meaning': {
        'spanish': 'Juego',
        'german': 'Spiel',
        'korean': '게임',
        'english': 'Game',
      },
    },
    'rain': {
      'meaning': {
        'spanish': 'Lluvia',
        'german': 'Regen',
        'korean': '비',
        'english': 'Rain',
      },
    },
    'snow': {
      'meaning': {
        'spanish': 'Nieve',
        'german': 'Schnee',
        'korean': '눈',
        'english': 'Snow',
      },
    },
  };

  String? _searchedWord;
  Map<String, dynamic>? _result;

  void _searchWord() {
    final query = _searchController.text.trim().toLowerCase();
    if (vocabulary.containsKey(query)) {
      setState(() {
        _searchedWord = query;
        _result = vocabulary[query];
      });
    } else {
      setState(() {
        _searchedWord = null;
        _result = null;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Word not found')));
    }
  }

  Future<void> _speak(String word, String language) async {
    switch (language.toLowerCase()) {
      case 'spanish':
        await flutterTts.setLanguage('es-ES');
        break;
      case 'german':
        await flutterTts.setLanguage('de-DE');
        break;
      case 'korean':
        await flutterTts.setLanguage('ko-KR');
        break;
      case 'english':
      default:
        await flutterTts.setLanguage('en-US');
    }
    await flutterTts.speak(word);
  }

  @override
  void dispose() {
    _searchController.dispose();
    flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vocabulary Search')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search word',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _searchWord,
                ),
              ),
              onSubmitted: (_) => _searchWord(),
            ),
            const SizedBox(height: 30),
            if (_searchedWord != null && _result != null) ...[
              Text(
                'Word: $_searchedWord',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children:
                      _result!['meaning'].entries.map<Widget>((entry) {
                        final lang = entry.key;
                        final meaning = entry.value;
                        return ListTile(
                          title: Text(
                            '$lang: $meaning',
                            style: const TextStyle(fontSize: 18),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.volume_up),
                            onPressed: () => _speak(meaning, lang),
                          ),
                        );
                      }).toList(),
                ),
              ),
            ] else
              const Center(child: Text('Search a word to see results')),
          ],
        ),
      ),
    );
  }
}

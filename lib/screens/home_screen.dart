import 'package:flutter/material.dart';

import '../widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'title': 'Vocabulary', 'icon': Icons.language},
    {'title': 'Grammar', 'icon': Icons.book},
    {'title': 'Listening', 'icon': Icons.headphones},
    {'title': 'Speaking', 'icon': Icons.record_voice_over},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Language Learning')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children:
              categories.map((category) {
                return CategoryCard(
                  title: category['title'],
                  icon: category['icon'],
                  onTap: () {
                    if (category['title'] == 'Vocabulary') {
                      Navigator.pushNamed(context, '/vocabulary');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${category['title']} section coming soon!',
                          ),
                        ),
                      );
                    }
                  },
                );
              }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Lessons'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0,
      ),
    );
  }
}

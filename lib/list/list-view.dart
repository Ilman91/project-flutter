import 'package:flutter/material.dart';
import 'package:flutter1/list/detailScreen.dart';

class ArticleListScreen extends StatelessWidget {
  const ArticleListScreen({super.key});

  final List<Map<String, String>> articles = const [
    {
      'title': 'Flutter Dasar',
      'description': 'Belajar Flutter dari dasar hingga mahir',
      'image': 'https://picsum.photos/200?1',
    },
    {
      'title': 'State Management',
      'description': 'Pelajari cara mengelola state dalam aplikasi Flutter',
      'image': 'https://picsum.photos/200?2',
    },
    {
      'title': 'UI/UX Design',
      'description': 'Membuat desain antarmuka yang menarik dan responsif',
      'image': 'https://picsum.photos/200?3',
    },
    {
      'title': 'Firebase Integration',
      'description': 'Integrasi aplikasi Flutter dengan Firebase untuk backend',
      'image': 'https://picsum.photos/200?4',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ArticleDetailScreen(data: article),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 6,),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(article['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          article['title']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          article['description']!,
                          style: const TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  )
                )
              ]
            )
          )
        );
      },
    );
  }
}

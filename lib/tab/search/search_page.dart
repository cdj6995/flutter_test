import 'package:flutter/material.dart';
import 'package:instagram_clone/create/create_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  final List<String> _urls = const [
    'https://www.oxfamtrailwalker.or.kr/sites/default/files/styles/teamthumb/public/team/7296a3a08d04137e6bed7b10ed2edd64.jpg?itok=FMJ0nBNz',
    'https://i.pinimg.com/236x/ba/96/ae/ba96ae60035db0b50c337918665e1278.jpg',
    'https://png.pngtree.com/png-clipart/20220107/ourlarge/pngtree-vector-hand-drawn-cartoon-turtle-png-image_4098365.png',
    'https://i.pinimg.com/236x/ba/96/ae/ba96ae60035db0b50c337918665e1278.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 우측 하단 팬모양 버튼
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CreatePage()),
          );
        },
        child: const Icon(Icons.create),
      ),
      appBar: AppBar(
        title: const Text('Instagram clone'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
          itemCount: _urls.length, // 그리드에 나올 갯수를 지정
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            final url = _urls[index];
            return Image.network(
              url,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}

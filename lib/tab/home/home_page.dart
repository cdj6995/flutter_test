import 'package:flutter/material.dart';
import 'package:flutter_map/tab/home/home_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = HomeModel();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Map 띄우기'),
        //로그아웃 아이콘
        actions: [
          IconButton(
              onPressed: (){
                model.logout();
              },
              icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Center(
        child: Column(
          //Flutter inspector에서 화면의 구간들을 나타나게 할 수 있다.
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20), // 공간 주기
            const Text('Flutter Map 띄우기',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            const Text('여긴 homepage'),
            const SizedBox(height: 20),
            Card(
              elevation: 4.0, // 카드 그림자 주기
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar( // 원형모양
                        backgroundImage: NetworkImage('https://img.insight.co.kr/static/2020/02/13/700/w070v9be83ewf2cmv191.jpg'),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text("model.getEmail()",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("model.getNickName()"),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network('https://img.insight.co.kr/static/2020/02/13/700/w070v9be83ewf2cmv191.jpg',
                          width: 70,height: 70,fit: BoxFit.cover,),
                        const SizedBox(width: 4),
                        Image.network('https://i.pinimg.com/236x/ba/96/ae/ba96ae60035db0b50c337918665e1278.jpg',
                          width: 70,height: 70,fit: BoxFit.cover,),
                        const SizedBox(width: 4),
                        Image.network('https://img.vogue.co.kr/vogue/2020/01/style_5e1d62db4faa8-759x500.jpg',
                          width: 70,height: 70,fit: BoxFit.cover,),
                        const SizedBox(width: 4),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('페북 친구'),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('팔로우'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

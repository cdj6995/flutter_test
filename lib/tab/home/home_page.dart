import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Clone'),
      ),
      body: Center(
        child: Column(
          //Flutter inspector에서 화면의 구간들을 나타나게 할 수 있다.
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20), // 공간 주기
            Text('Instagram에 오신 것을 환영합니다.',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text('사진과 동영상을 보려면 팔로우하세요.'),
            SizedBox(height: 20),
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
                        backgroundImage: NetworkImage('https://www.oxfamtrailwalker.or.kr/sites/default/files/styles/teamthumb/public/team/7296a3a08d04137e6bed7b10ed2edd64.jpg?itok=FMJ0nBNz'),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'cdj6995@gmail.com',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('닉네임'),
                    SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network('https://www.oxfamtrailwalker.or.kr/sites/default/files/styles/teamthumb/public/team/7296a3a08d04137e6bed7b10ed2edd64.jpg?itok=FMJ0nBNz',
                        width: 70,height: 70,fit: BoxFit.cover,),
                        SizedBox(width: 4),
                        Image.network('https://i.pinimg.com/236x/ba/96/ae/ba96ae60035db0b50c337918665e1278.jpg',
                          width: 70,height: 70,fit: BoxFit.cover,),
                        SizedBox(width: 4),
                        Image.network('https://png.pngtree.com/png-clipart/20220107/ourlarge/pngtree-vector-hand-drawn-cartoon-turtle-png-image_4098365.png',
                          width: 70,height: 70,fit: BoxFit.cover,),
                        SizedBox(width: 4),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('페북 친구'),
                    SizedBox(height: 8),
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

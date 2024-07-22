import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새 게시물'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send),
          )
        ]
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0) ,
        child: SingleChildScrollView( // 화면 사이즈가 세로로 넘어가면 스크롤 생기도록!
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "제목을 입력하세요.",
                  fillColor: Colors.white70,
                ),
              ),
              const SizedBox(height:20),
              ElevatedButton(
                onPressed:() {},
                child: const Text('이미지 선택'),
              ),
              // const SizedBox(
              //   width: 300,
              //   height: 300,
              //   child: Placeholder(),
              // ),
              Image.network('https://i.pinimg.com/236x/ba/96/ae/ba96ae60035db0b50c337918665e1278.jpg', width:300,),
            ],
          ),
        )
      ),
    );
  }
}

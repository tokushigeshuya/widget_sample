import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.name);
  final String name;

  // 全てウィジェットであり、それを組み合わせて使うだけ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('セカンド'),
        backgroundColor: Colors.blue,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            Text(
              name,
              style: const TextStyle(
                fontSize: 30,
              ),
              ),
            ElevatedButton(
              onPressed: (){
                // ボタンを押した時に呼ばれるコードを書く
                Navigator.pop(context);
              },
              child: const Text('前の画面に戻る'),
              ),
          ],
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // 全てウィジェットであり、それを組み合わせて使うだけ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('セカンド'),
        backgroundColor: Colors.blue,
        ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            // ボタンを押した時に呼ばれるコードを書く
            Navigator.pop(context);
          },
          child: const Text('前の画面に戻る'),
          ),
      )
    );
  }
}
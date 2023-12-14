import 'package:flutter/material.dart';
import '/second_page.dart';

class FirstPage extends StatelessWidget {
  // 全てウィジェットであり、それを組み合わせて使うだけ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('toku'),
        backgroundColor: Colors.green,
        ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            // ボタンを押した時に呼ばれるコードを書く
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => SecondPage(),
                // 下から上に出現
                fullscreenDialog: true,
              )
            );
          },
          child: const Text('次の画面へ'),
          ),
      )
    );
  }
}
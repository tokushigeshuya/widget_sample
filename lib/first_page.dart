import 'package:flutter/material.dart';
import '/second_page.dart';

class FirstPage extends StatelessWidget {
  String nameText = '';
  // 全てウィジェットであり、それを組み合わせて使うだけ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('toku'),
        backgroundColor: Colors.green,
        ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/flutter.png'),
              TextField(
                onChanged: (text){
                  nameText = text;
                },
              ),
              ElevatedButton(
                onPressed: (){
                  // ボタンを押した時に呼ばれるコードを書く
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => SecondPage(nameText)
                      // 下から上に出現
                      // fullscreenDialog: true,
                    )
                  );
                },
                child: const Text('次の画面へ'),
                ),
            ],
          ),
        ),
      )
    );
  }
}
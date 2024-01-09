import 'package:flutter/material.dart';
import '/second_page.dart';

class FirstPage extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C','toku'];
  String nameText = '';
  // 全てウィジェットであり、それを組み合わせて使うだけ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リスト'),
        backgroundColor: Colors.green,
        ),
      body: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(child: Text('Entry ${entries[index]}'));
        })
    );
  }
}
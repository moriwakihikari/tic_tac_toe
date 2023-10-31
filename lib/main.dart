import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/view/board.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(), //【新規追加】
      home: Scaffold(
        appBar: AppBar(
          //【新規追加】アプリバー
          title: const Text('FlutterKaigi 2023 - TicTacToe'), //【新規追加】アプリのタイトル
        ),
        body: Board(), //【新規追加】ゲーム画面ウィジェット
      ),
    );
  }
}

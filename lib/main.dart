import 'package:flutter/material.dart';
import 'package:todo/todoPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO APP',
      home: const ToDoPage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(color: Colors.blueGrey),
        floatingActionButtonTheme:const FloatingActionButtonThemeData(backgroundColor: Colors.blueGrey)
      ),
    );
  }
}

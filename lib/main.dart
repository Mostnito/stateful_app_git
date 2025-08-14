import 'package:flutter/material.dart';
import 'package:stateful_app/color_changer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {

  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 7'),
        backgroundColor: Colors.lightBlue,
      ),

      body: Center(
        child: ColorChanger(),
      ),

      floatingActionButton: ElevatedButton(
        onPressed: (){
          setState((){counter++;});
          print(counter);
          },
        child: Icon(Icons.add)),

    );
  }
}

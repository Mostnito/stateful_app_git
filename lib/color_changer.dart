import 'dart:math';
import 'package:flutter/material.dart';

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});

  @override
  State<ColorChanger> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  late Color _currentColor;
  final List<Color> _colors = [ Colors.red, Colors.green, Colors.yellow, Colors.purple, Colors.orange, Colors.teal];
  final Random _random = Random();


  @override
  void initState(){
    super.initState();
    _currentColor = Colors.lightBlue;
  }


  void changeColor(){
    setState(() {
      _currentColor = _colors[_random.nextInt(_colors.length)];
    });
    
  }




  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeColor,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        color: _currentColor,
        child: Text('Tap me please'),
      ),      
    );
  }
}
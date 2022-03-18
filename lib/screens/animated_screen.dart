import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.orange;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void changeShape () {
    final random = Random();
    _width = random.nextInt(300).toDouble();
    _height = random.nextInt(300).toDouble();

    // Generate a random color.
    _color = Color.fromRGBO(
      random.nextInt(256), 
      random.nextInt(256), 
      random.nextInt(256), 
      1
    );

    // Generate a random border radius.
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());

    // Define how long the animation should take.
    const Duration(seconds: 1);
    
    // Provide an optional curve to make the animation feel smoother.
    Curves.fastOutSlowIn;

  setState(() {
    
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation')
      ),
      body: Center(
        child: AnimatedContainer(
          height: _width,
          width: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
          // Define how long the animation should take.
          duration: const Duration(seconds: 1),
          
          // Provide an optional curve to make the animation feel smoother.
          curve: Curves.fastOutSlowIn,
        ),
      ),

      floatingActionButton: FloatingActionButton (
        child: const Icon(Icons.play_circle_outline, size: 35,),
        onPressed: () {
          changeShape();
        },
      ),
    );
  }
}
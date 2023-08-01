import 'package:flutter/material.dart';
import 'main.dart';


class AnimatedAlignExampleApp extends StatelessWidget {
  const AnimatedAlignExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedAlign Sample')),
        body: const AnimatedAlignExample(),
      ),
    );
  }
}

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Stack(
        children: [
          Positioned( left: 0, right: 0, top: -MediaQuery.of(context).size.width/2,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height-  MediaQuery.of(context).size.width/2,
              color: Colors.red,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topCenter : Alignment.bottomCenter,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: BlueContainer()
              ),
            ),
          ),
        ]
      ),
    );
  }
}

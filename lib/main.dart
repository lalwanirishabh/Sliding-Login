import 'package:flutter/material.dart';
import 'animatedAlign.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          // Positioned(width: double.infinity, height: MediaQuery.of(context).size.height/2, child: Positioned(top: -MediaQuery.of(context).size.height/2 + MediaQuery.of(context).size.width/2 ,left: 0, right: 0, child: BlueContainer(),)),
          AnimatedAlignExample(),
          
      ],),
      ),
    )
    ;
  }
}



class BlueContainer extends StatefulWidget {
  const BlueContainer({super.key});

  @override
  State<BlueContainer> createState() => _BlueContainerState();
}

class _BlueContainerState extends State<BlueContainer> {
  @override
  Widget build(BuildContext context) {
    return 
          Container(height: MediaQuery.of(context).size.height/2 +50 , width: double.infinity, decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(MediaQuery.of(context).size.width/2) , bottomRight: Radius.circular(MediaQuery.of(context).size.width/2))),
          child: Stack(children: [
            Positioned( bottom: 70 , left: MediaQuery.of(context).size.width/2 - 70, child: Text('LOG IN' , style: TextStyle(fontSize: 40 , color: Colors.white),))
          ]),
          );
  }
}
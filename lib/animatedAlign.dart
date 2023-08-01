import 'package:flutter/material.dart';
import 'main.dart';

bool visible = true;

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
          visible = !visible;
          selected = !selected;
        });
      },
      child: Stack(
        children: [
          Positioned( left: 0, right: 0, top: -MediaQuery.of(context).size.width/2,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height-  MediaQuery.of(context).size.width/2,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topCenter : Alignment.bottomCenter,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: BlueContainer()
              ),
            ),
          ),
          Positioned(top: 100, child: Login()),
          Positioned(top: 500, child: SignUp()),
        ]
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          // The green box must be a child of the AnimatedOpacity widget.
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: LoginPlaceholder(),
          ),
        
      );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: visible ? 0.0 : 1.0,
          duration: const Duration(milliseconds: 500),
          // The green box must be a child of the AnimatedOpacity widget.
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: SignUpPlaceholder(),
          ),
        ),
      );
  }
}

class LoginPlaceholder extends StatelessWidget {
  const LoginPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
                      children: [
                        TextField(
                        decoration: InputDecoration(labelText: 'Email' , prefixIcon: Icon(Icons.mail), border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)) , filled: true , fillColor: Colors.white), 
                        ),
                        
                        TextField(
                        decoration: InputDecoration(labelText: 'Password' , prefixIcon: Icon(Icons.mail), border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)) , filled: true , fillColor: Colors.white), 
                        ),
                        ]
                      ),
                    );
  }
}

class SignUpPlaceholder extends StatelessWidget {
  const SignUpPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
                      children: [
                        TextField(
                        decoration: InputDecoration(labelText: 'Email' , prefixIcon: Icon(Icons.mail), border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)) , filled: true , fillColor: Colors.white), 
                        ),
                        
                        TextField(
                        decoration: InputDecoration(labelText: 'Password' , prefixIcon: Icon(Icons.mail), border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)) , filled: true , fillColor: Colors.white), 
                        ),

                        TextField(
                        decoration: InputDecoration(labelText: 'Confirm Password' , prefixIcon: Icon(Icons.mail), border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)) , filled: true , fillColor: Colors.white), 
                        ),
                        ]
                      ),
                    );
  }
}
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: App1(),
    );
  }
}

class App1 extends StatefulWidget {
  const App1({super.key});

  @override
  State<App1> createState() => _App1State();
}

class _App1State extends State<App1> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const App2()),
            );
          },
        ),
      ),
    );
  } 
}

class App2 extends StatefulWidget {
  const App2({super.key});

  @override
  State<App2> createState() => _App2State();
}

class _App2State extends State<App2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const App1()),
  );
          },
        ),
      ),


    );
  }
}

//      body:   Image.asset('images/elton.JPG', width:300, height:100),


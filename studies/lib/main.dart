import 'package:flutter/material.dart';

void main()
{
  runApp(App2());

}

class MyApp extends StatefulWidget {

  final String nome = "Charles";
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(   
      home: Scaffold( 
        appBar: AppBar( 
          title: Text("Charles")
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
      return Container();
    }
  }


           // mainAxisAlignment: MainAxisAlignment.spaceAround, //spaceAround, start, end, spaceBetwenn
         
         
         
         /* mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Meu App", style: TextStyle(fontSize: 30)),
            ),
            Center(
              child: Text("Dantas", style: TextStyle(fontSize: 30)),
            ),
          ],*/
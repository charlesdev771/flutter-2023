import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const App2()),
  );
          },
              
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const App3()),
  );
              },
            ),
          ],
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
    return Container(child: Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),);
  }
}

class App3 extends StatefulWidget {
  const App3({super.key});

  @override
  State<App3> createState() => _App3State();
}

class _App3State extends State<App3> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"),);
  }
}
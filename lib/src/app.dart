import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  @override
  build(context) {
    return MaterialApp(
      theme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.blueGrey),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => {
            setState(() {
              counter = counter + 1;
            })
          },
        ),
        appBar: AppBar(
          title: const Text('Counter App'),
        ),
        body: Center(
          child: Text(
            counter.toString(),
            style: const TextStyle(fontSize: 36),
          ),
        ),
      ),
    );
  }
}

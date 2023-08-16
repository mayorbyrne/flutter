import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      title: "Kevin Personal Site",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: Scaffold(
        backgroundColor: Colors.grey,
          appBar: AppBar(
              leading: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => print("hello world")),
              title: Text("KEVIN MORITZ")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                  child: Image.asset("assets/images/Kirk_Van_Houten.png"),
                ),
                TextButton(
                    child: Text("Hi. I'm Kevin."),
                    onPressed: () => print("hello world")),
              ],
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        color: Colors.white,
        title: "Namer App",
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  //
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () => print("hello world"),),
          title: Text("Kevin Moritz"),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Text("Welcome to my site.", style: TextStyle(decorationStyle: TextDecorationStyle.solid, color: Colors.white, backgroundColor: Colors.blueGrey, fontFamily: GoogleFonts.ribeye().fontFamily)),
        )
      ]);
  }
}
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anim search bar Example',
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: AnimSearchBar(
        width: 400,
        textController: textController,
        rtl: true,
        onSuffixTap: () {
          setState(() {
            textController.clear();
          });
        },
        onChanged: (v) {
          print(v);
        },
      )),
    );
  }
}

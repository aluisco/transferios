import 'package:flutter/material.dart';
import 'package:transferios/home_page.dart';
import 'package:transferios/navdrawer_page.dart';

void main() {
  runApp(const TransferiOS());
}

class TransferiOS extends StatelessWidget {
  const TransferiOS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text('TransferiOS'),
      ),
      body: const HomePage(),
    );
  }
}

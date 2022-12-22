import 'package:flutter/material.dart';
import 'package:transferios/learn_flutter_page.dart';
import 'package:transferios/tab_bar_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const LearnFlutterPage();
                    },
                  ),
                );
              },
              child: const Text('Learn Flutter'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const TabBarPage();
                    },
                  ),
                );
              },
              child: const Text('Elevated button'),
            ),
          ],
        ),
      ),
    );
  }
}

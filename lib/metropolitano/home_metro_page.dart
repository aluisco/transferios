import 'package:flutter/material.dart';

class HomeMetroPage extends StatelessWidget {
  const HomeMetroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
              Tab(
                icon: Icon(Icons.directions_boat),
              ),
            ],
          ),
          title: const Text('Metropolitano'),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_bike),
            Icon(Icons.directions_boat),
          ],
        ),
      ),
    );
  }
}

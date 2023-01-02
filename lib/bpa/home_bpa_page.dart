import 'package:flutter/material.dart';
import 'package:transferios/navdrawer_page.dart';

class HomeBPAPage extends StatefulWidget {
  const HomeBPAPage({super.key});

  @override
  State<HomeBPAPage> createState() => _HomeBPAPageState();
}

class _HomeBPAPageState extends State<HomeBPAPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyPage(),
    );
  }
}

class BodyPage extends StatelessWidget {
  const BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: const NavDrawer(),
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.key),
                child: Text(
                  'Sesión',
                ),
              ),
              Tab(
                icon: Icon(Icons.money),
                child: Text(
                  'Operaciones',
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.search_sharp,
                ),
                child: Text(
                  'Consultas',
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                ),
                child: Text(
                  'Configuración',
                ),
              )
            ],
          ),
          title: const Text('TransferiOS - BPA'),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_ferry),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_boat),
            Icon(Icons.directions_bus),
          ],
        ),
      ),
    );
  }
}

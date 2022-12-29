import 'package:flutter/material.dart';
import 'package:transferios/bandec/sesion_bandec_page.dart';

import '../navdrawer_page.dart';

class HomeBandecPage extends StatefulWidget {
  const HomeBandecPage({super.key});

  @override
  State<HomeBandecPage> createState() => _HomeBandecPageState();
}

class _HomeBandecPageState extends State<HomeBandecPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
          title: const Text('TransferiOS - BANDEC'),
        ),
        body: const TabBarView(
          children: [
            SesionBandecPage(),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_boat),
            Icon(Icons.directions_bus),
          ],
        ),
      ),
    );
  }
}

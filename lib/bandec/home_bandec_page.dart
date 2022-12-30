import 'package:flutter/material.dart';
import 'package:transferios/bandec/sesion_bandec_page.dart';
import 'package:transferios/navdrawer_page.dart';

class HomeBandecPage extends StatefulWidget {
  const HomeBandecPage({super.key});

  @override
  State<HomeBandecPage> createState() => _HomeBandecPageState();
}

class _HomeBandecPageState extends State<HomeBandecPage> {
  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: createMaterialColor(
          const Color.fromARGB(255, 140, 12, 1),
        ),
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

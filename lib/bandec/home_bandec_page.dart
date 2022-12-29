import 'package:flutter/material.dart';
import 'package:transferios/bandec/sesion_bandec_page.dart';

class HomeBandecPage extends StatelessWidget {
  const HomeBandecPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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

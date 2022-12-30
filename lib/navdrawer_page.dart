import 'package:flutter/material.dart';
import 'package:transferios/bpa/home_bpa_page.dart';
import 'package:transferios/main.dart';
import 'package:transferios/metropolitano/home_metro_page.dart';

import 'bandec/home_bandec_page.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/images/225118.png'))),
            child: Container(
              alignment: Alignment.bottomRight,
              child: const Text(
                'Versión: 0.0.1 Alpha',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.start),
            title: const Text('Inicio'),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const TransferiOS();
                  },
                ),
              ),
            },
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: Colors.black54,
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/images/BANDEC1.jpg'),
              height: 35,
              width: 35,
              fit: BoxFit.cover,
            ),
            title: const Text(
              'BANDEC',
            ),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const HomeBandecPage();
                  },
                ),
              ),
            },
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/images/bpa.jpeg'),
              height: 35,
              width: 35,
              fit: BoxFit.cover,
            ),
            title: const Text(
              'BPA',
            ),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const HomeBPAPage();
                  },
                ),
              ),
            },
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/images/METRO_small11.jpg'),
              height: 35,
              width: 35,
              fit: BoxFit.cover,
            ),
            title: const Text(
              'Metropolitano',
            ),
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const HomeMetroPage();
                  },
                ),
              ),
            },
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: Colors.black54,
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            leading: const Icon(Icons.credit_card),
            title: const Text('Mis tarjetas'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configuración'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: Colors.black54,
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Contacto Bancos'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

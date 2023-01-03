import 'package:flutter/material.dart';
import 'package:transferios/main.dart';
import 'package:transferios/models/bank.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
                color: Colors.indigo,
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
          ...BankTypes.values.map(
            (bank) => ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(bank.imageSrc),
                radius: 20,
              ),
              title: Text(bank.name),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return bank.page;
                    },
                  ),
                );
              },
            ),
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

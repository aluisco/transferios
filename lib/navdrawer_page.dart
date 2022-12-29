import 'package:flutter/material.dart';
import 'package:transferios/main.dart';

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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const TransferiOS();
              }))
            },
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(color: Colors.black54),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:transferios/bandec/auth_bandec_page.dart';
import 'package:ussd_advanced/ussd_advanced.dart';

class SesionBandecPage extends StatelessWidget {
  const SesionBandecPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const AuthBandecPage();
                    },
                  ),
                );
              },
              child: const Text(
                'Autenticarse',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Cerrar Sesión'),
                    content: const Text(
                        'Va a remover la autenticación en el Banco.'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancelar'),
                        child: const Text('Cancelar'),
                      ),
                      TextButton(
                        onPressed: () => UssdAdvanced.sendUssd(
                            code: '*444*70#', subscriptionId: 1),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text(
                'Cerrar Sesión',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              onPressed: () {},
              child: const Text(
                'Cambio de Tarjeta',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

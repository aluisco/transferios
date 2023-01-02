import 'package:flutter/material.dart';
import 'package:transferios/bandec/auth_bandec_page.dart';
import 'package:transferios/ussd_codes_pages.dart';
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
                      // return const USSDCodes();
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
                    title: const Text('Seleccione'),
                    content: const Text('Va a cerrar su sesión.'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'No'),
                        child: const Text('No'),
                      ),
                      TextButton(
                        onPressed: () {
                          UssdAdvanced.sendUssd(
                              code: '*444*70#', subscriptionId: 1);
                          Navigator.pop(context);
                        },
                        child: const Text('Sí'),
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

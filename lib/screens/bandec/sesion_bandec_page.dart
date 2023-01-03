import 'package:flutter/material.dart';
import 'package:transferios/core/mixins.dart';
import 'package:transferios/core/style/colors.dart';
import 'package:transferios/core/style/dimensions.dart';
import 'package:transferios/models/models.dart';
import 'package:transferios/screens/bandec/auth_bandec_page.dart';
import 'package:ussd_advanced/ussd_advanced.dart';

class SesionBandecPage extends StatelessWidget with BandecMixin {
  const SesionBandecPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: defPaddingAll,
        child: Column(
          children: <Widget>[
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
              child: const Text('Autenticarse'),
            ),
            16.vSpace,
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
            16.vSpace,
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

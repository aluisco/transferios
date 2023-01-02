import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ussd_advanced/ussd_advanced.dart';

class AuthBandecPage extends StatefulWidget {
  const AuthBandecPage({super.key});

  @override
  State<AuthBandecPage> createState() => _AuthBandecPageState();
}

class _AuthBandecPageState extends State<AuthBandecPage> {
  late TextEditingController _controller;
  String? _response;
  bool _isHidden = true;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BANDEC - Autenticación'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                suffix: InkWell(
                  onTap: _togglePasswordView,
                  child: Icon(
                    _isHidden ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
                icon: const Icon(
                  Icons.password_sharp,
                  color: Colors.black,
                ),
              ),
              maxLength: 5,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
            ),
            // dispaly responce if any
            if (_response != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(_response!),
              ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () async {
                String? res = await UssdAdvanced.multisessionUssd(
                    code: '*444*40*02#', subscriptionId: 1);
                setState(() {
                  _response = res;
                });
                String? res2 = await UssdAdvanced.sendMessage(_controller.text);
                setState(() {
                  _response = res2;
                });
                await UssdAdvanced.cancelSession();
              },
              child: const Text('Iniciar Sesión'),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

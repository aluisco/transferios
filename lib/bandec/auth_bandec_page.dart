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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          // text input
          TextField(
            controller: _controller,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Contraseña',
              suffix: InkWell(
                onTap: _togglePasswordView,

                /// This is Magical Function
                child: Icon(
                  _isHidden
                      ?

                      /// CHeck Show & Hide.
                      Icons.visibility
                      : Icons.visibility_off,
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
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {
                  UssdAdvanced.sendUssd(
                      code: '*444*40*02*${_controller.text}#',
                      subscriptionId: 1);
                  Navigator.of(context).pop();
                },
                child: const Text('Iniciar Sesión'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

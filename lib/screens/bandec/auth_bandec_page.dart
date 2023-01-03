import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:transferios/core/mixins.dart';
import 'package:transferios/core/style/colors.dart';
import 'package:transferios/core/style/dimensions.dart';
import 'package:ussd_advanced/ussd_advanced.dart';

class AuthBandecPage extends StatefulWidget {
  const AuthBandecPage({super.key});

  @override
  State<AuthBandecPage> createState() => _AuthBandecPageState();
}

class _AuthBandecPageState extends State<AuthBandecPage> with BandecMixin {
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
    return Theme(
      data: ThemeData(
        primarySwatch: AppColor.materialGenerator(bank.mainColor),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('${bank.name} - Autenticación'),
        ),
        body: Padding(
          padding: defPaddingAll,
          child: Column(
            children: [
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

              16.vSpace,

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () async {
                  UssdAdvanced.sendUssd(
                      code: '*444*40*02*${_controller.text}#',
                      subscriptionId: 1);
                  Navigator.of(context).pop();
                },
                child: const Text('Iniciar Sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

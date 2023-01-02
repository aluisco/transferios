import 'package:flutter/material.dart';
import 'package:transferios/bandec/home_bandec_page.dart';
import 'package:transferios/bpa/home_bpa_page.dart';
import 'package:transferios/metropolitano/home_metro_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Center(
            child: Material(
              color: Colors.transparent,
              child: Text(
                'Escoja su Banco',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Material(
              color: const Color.fromARGB(255, 168, 12, 1),
              elevation: 8,
              borderRadius: BorderRadius.circular(8),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const HomeBandecPage();
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image:
                          const AssetImage('assets/images/tarjeta_bandec.png'),
                      height: 120,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      '>',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30, // <-- SEE HERE
          ),
          Center(
            child: Material(
              color: Colors.brown,
              elevation: 8,
              borderRadius: BorderRadius.circular(8),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const HomeBPAPage();
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: const AssetImage('assets/images/tarjeta_bpa.png'),
                      height: 120,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      '>',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30, // <-- SEE HERE
          ),
          Center(
            child: Material(
              color: const Color.fromARGB(255, 2, 124, 18),
              elevation: 8,
              borderRadius: BorderRadius.circular(8),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const HomeMetroPage();
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image:
                          const AssetImage('assets/images/tarjeta_metro.png'),
                      height: 120,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      '>',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Material(
              color: Colors.transparent,
              child: Text(
                'Todos los derechos reservados.',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

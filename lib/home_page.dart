import 'package:flutter/material.dart';
import 'package:transferios/bandec/home_bandec_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
              borderRadius: BorderRadius.circular(28),
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
                      image: const AssetImage('assets/images/BANDEC1.jpg'),
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 44,
                    ),
                    const Text(
                      'BANDEC',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 44,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15, // <-- SEE HERE
          ),
          Center(
            child: Material(
              color: Colors.brown,
              elevation: 8,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black,
                onTap: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: const AssetImage('assets/images/bpa.jpeg'),
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 66,
                    ),
                    const Text(
                      'BPA',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 66,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15, // <-- SEE HERE
          ),
          Center(
            child: Material(
              color: const Color.fromARGB(255, 2, 124, 18),
              elevation: 8,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black,
                onTap: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image:
                          const AssetImage('assets/images/METRO_small11.jpg'),
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'Metropolitano',
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
        ],
      ),
    );
  }
}

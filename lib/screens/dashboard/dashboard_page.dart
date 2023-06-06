import 'package:flutter/material.dart';
import 'package:transferios/core/style/dimensions.dart';
import 'package:transferios/models/bank.dart';
import 'package:transferios/common_widgets/navigtion_drawer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'TransferiOS',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      drawer: const NavigationDrawerOwn(),
      body: Padding(
        padding: defPaddingAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Escoja su Banco',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            32.vSpace,
            ...BankTypes.values.map(
              (bank) => InkWell(
                borderRadius: defBorderRadiusCircular,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => bank.page,
                    ),
                  );
                },
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                    children: [
                      Container(
                        constraints:
                            BoxConstraints.tight(const Size.square(70)),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(bank.imageSrc),
                              fit: BoxFit.cover),
                        ),
                      ),
                      32.hSpace,
                      Text(
                        bank.name,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

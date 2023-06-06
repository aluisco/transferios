import 'package:flutter/material.dart';
import 'package:transferios/common_widgets/common_widgets.dart';
import 'package:transferios/core/mixins.dart';
import 'package:transferios/core/style/colors.dart';

class MetropolitanoPage extends StatelessWidget with MetroMixin {
  const MetropolitanoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primarySwatch: AppColor.materialGenerator(bank.mainColor),
      ),
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: const NavigationDrawerOwn(),
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: const BackButton(),
            actions: const [DrawerIconButton()],
            titleSpacing: 0,
            title: Text('TransferIOS - ${bank.name}'),
            centerTitle: true,
            bottom: TabBar(
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              labelStyle: Theme.of(context).textTheme.labelSmall,
              tabs: const [
                Tab(
                  icon: Icon(Icons.key),
                  text: 'Sesión',
                  iconMargin: EdgeInsets.zero,
                ),
                Tab(
                  icon: Icon(Icons.money),
                  text: 'Operaciones',
                  iconMargin: EdgeInsets.zero,
                ),
                Tab(
                  icon: Icon(
                    Icons.search_sharp,
                  ),
                  text: 'Consultas',
                  iconMargin: EdgeInsets.zero,
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                  ),
                  text: 'Configuración',
                  iconMargin: EdgeInsets.zero,
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_ferry),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_boat),
              Icon(Icons.directions_bus),
            ],
          ),
        ),
      ),
    );
  }
}

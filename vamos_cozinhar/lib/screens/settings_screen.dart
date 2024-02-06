import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _createSwitch(
      String title,
      String subtitle,
      bool value,
      Function() onChagend,
    ) {
      return SwitchListTile.adaptive(
        title: Text(title),
        value: value,
        onChanged: null,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Configurações'),
      ),
    );
  }
}

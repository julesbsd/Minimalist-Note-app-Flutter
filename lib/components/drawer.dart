import 'package:flutter/material.dart';
import 'package:noteappdesign/components/drawer_tile.dart';
import 'package:noteappdesign/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // header
          DrawerHeader(
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Icon(
                size: 50,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  Icons.pages_outlined)),
          // notes tile
          DrawerTile(
              title: 'Notes',
              leading: const Icon(Icons.home),
              onTap: () => Navigator.pop(context)),
          DrawerTile(
              title: 'Settings',
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              })

          // settings tile
        ],
      ),
    );
  }
}

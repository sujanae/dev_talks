import 'package:dev_talks/features/posts/presentation/components/my_drawer_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Icon(Icons.person_2_rounded,
                    size: 80, color: Theme.of(context).colorScheme.primary),
              ),
              Divider(
                color: Theme.of(context).colorScheme.primary,
              ),

              //home
              MyDrawerTile(
                icon: Icons.home,
                title: "H O M E",
                onTap: () {},
              ),

              //profile
              MyDrawerTile(
                icon: Icons.person,
                title: "P R O F I L E",
                onTap: () {},
              ),

              //search
              MyDrawerTile(
                icon: Icons.search,
                title: "S E A R C H",
                onTap: () {},
              ),

              //settings
              MyDrawerTile(
                icon: Icons.settings,
                title: "S E T T I N G S",
                onTap: () {},
              ),

              //logout
              MyDrawerTile(
                icon: Icons.logout,
                title: "L O G O U T",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

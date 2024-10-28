import 'package:dev_talks/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:dev_talks/features/home/presentation/components/my_drawer_tile.dart';
import 'package:dev_talks/features/profile/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                onTap: () => Navigator.of(context).pop(),
              ),

              //profile
              MyDrawerTile(
                icon: Icons.person,
                title: "P R O F I L E",
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
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
                onTap: () => context.read<AuthCubit>().logout(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

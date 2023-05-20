import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants_get.dart';
import 'package:ice_cream_app/widgets/home_widgets/h_related_list.dart';
import 'package:ice_cream_app/widgets/home_widgets/h_appbar.dart';
import 'package:ice_cream_app/widgets/home_widgets/h_categoy_list.dart';
import 'package:ice_cream_app/widgets/home_widgets/h_ice_list.dart';
import 'package:ice_cream_app/widgets/home_widgets/h_navbar.dart';
import 'package:ice_cream_app/widgets/home_widgets/h_searchbar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedNav = ValueNotifier<int>(2);
    final selectedCat = ValueNotifier<int>(0);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // appbar
                const HAppBar(),
                const SizedBox(height: 25),
                // top texts
                const Text('Good Afternoon..!',
                    style: TextStyle(letterSpacing: 1.3, fontSize: 11)),
                const SizedBox(height: 5),
                const Text(
                  'Jack Son Oliver',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 35),
                // searchFile & setting icon
                getSearchField(),
                const SizedBox(height: 30),
                // category List
                HCategoryList(selectedCat: selectedCat),
                const SizedBox(height: 20),
                // ice-cream list
                const HIceList(),
                const SizedBox(height: 30),
                const Text(
                  'Explore Related',
                  style: TextStyle(letterSpacing: 1.3),
                ),
                const SizedBox(height: 15),
                const HRelatedList(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: HNavBar(selectedNav: selectedNav),
    );
  }

  Row getSearchField() => Row(
        children: [
          const Expanded(child: HSearchBar()),
          const SizedBox(width: 10),
          getAppBarIcon('assets/icons/settings.png'),
        ],
      );
}

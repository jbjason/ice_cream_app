import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';
import 'package:ice_cream_app/constants/constants_get.dart';
import 'package:ice_cream_app/widgets/home_widgets/home_ice_list.dart';
import 'package:ice_cream_app/widgets/home_widgets/home_navbar.dart';
import 'package:ice_cream_app/widgets/home_widgets/home_searchbar.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  getAppBarIcon('assets/icons/menu.png'),
                  const Spacer(),
                  getAppBarIcon('assets/icons/figma.png'),
                  const SizedBox(width: 20),
                  getAppBarIcon('assets/icons/cart1.png'),
                ],
              ),
              const SizedBox(height: 30),
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
              Row(
                children: [
                  const Expanded(child: HomeSearchBar()),
                  const SizedBox(width: 10),
                  getAppBarIcon('assets/icons/settings.png'),
                ],
              ),
              const SizedBox(height: 30),
              HomeCategoryList(selectedCat: selectedCat),
              const SizedBox(height: 30),
              const HomeIceList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeNavBar(selectedNav: selectedNav),
    );
  }
}

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({super.key, required this.selectedCat});

  final ValueNotifier<int> selectedCat;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (i) => ValueListenableBuilder(
            valueListenable: selectedCat,
            builder: (context, val, _) => InkWell(
              onTap: () => selectedCat.value = i,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: selectedColor),
                  color: val == i ? selectedColor : Colors.white,
                ),
                child: Text(
                  categories[i],
                  style: TextStyle(
                    color: val == i ? selectedIcon : selectedColor,
                    letterSpacing: val == i ? 1.2 : 1,
                    fontWeight: val == i ? FontWeight.w700 : FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

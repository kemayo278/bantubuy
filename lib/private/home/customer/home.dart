import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/private/cart/home.dart';
import 'package:bantubuy/private/home/customer/header.dart';
import 'package:bantubuy/private/home/customer/offer.dart';
import 'package:bantubuy/private/home/customer/subcontent.dart';
import 'package:bantubuy/private/order/customer/home.dart';
import 'package:bantubuy/private/setting/customer/profile.dart';
import 'package:bantubuy/private/shop/index/home.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PreviousHomePage extends StatelessWidget {
  const PreviousHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int index = 0;
    final screens = [
      const DashboardPage(),
      const MyOrders(),
      const ShopsPage(),
      const CartPage(),
      const ProfilePage(),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 238, 246),
      body: screens[index],
      // floatingActionButton: FloatingActionButton(
      //     backgroundColor: AppConfigTheme.primaryColor,
      //     onPressed: () {
      //       Navigator.of(context).push(
      //         CustomPageRoute(child: const CartPage(),direction: AxisDirection.left)
      //       );   
      //     },
      //     child: const Icon(
      //       Icons.shopping_cart,
      //       size: 30
      //     ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: AppConfigTheme.primaryColor,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)
          )
        ),
        child: NavigationBar(
          height: 65,
          elevation: 10.0,
          // backgroundColor: const Color.fromARGB(255, 232, 238, 246),
          backgroundColor: AppConfigTheme.whiteColor,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: index,
          animationDuration: const Duration(milliseconds: 700),
          onDestinationSelected: (index) => setState(() => this.index = index ),
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Iconsax.home,color: AppConfigTheme.whiteColor),
              icon: Icon(Iconsax.home,size: 30,),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Iconsax.shopping_bag,color: AppConfigTheme.whiteColor,size: 30),
              icon: Icon(Iconsax.shopping_bag,size: 30,),
              label: 'Orders',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.store,color: AppConfigTheme.whiteColor,size: 33,),
              icon: Icon(Icons.store_outlined,size: 35,),
              label: 'Shops',
            ),             
            NavigationDestination(
              selectedIcon: Icon(Iconsax.shopping_cart,color: AppConfigTheme.whiteColor),
              icon: Icon(Iconsax.shopping_cart,size: 30,),
              label: 'Cart',
            ),            
            NavigationDestination(
              selectedIcon: Icon(Iconsax.user,color: AppConfigTheme.whiteColor),
              icon: Icon(Iconsax.user,size: 28,),
              label: 'Profile',
            ),                                    
          ],
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 10),
              HeaderHomePage(),
              SizedBox(height: 10),
              Offers(),
              SizedBox(height: 15),
              TitleSubContent(),
              SizedBox(height: 15),
              DealsList()
            ],
          ),
        ),
      ),
    );
  }
}
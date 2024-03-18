import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/private/home/seller/contentanalytic.dart';
import 'package:bantubuy/private/home/seller/header.dart';
import 'package:bantubuy/private/home/seller/titleanalytic.dart';
import 'package:bantubuy/private/order/seller/home.dart';
import 'package:bantubuy/private/product/seller/list/home.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DashboardSellerPage extends StatelessWidget {
  const DashboardSellerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      backgroundColor: const Color.fromARGB(255, 232, 238, 246),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 10),
                const HeaderHomePage(),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Text("Hello ETA Nelson",
                        style: AppConfigTheme.buildTextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text("Welcome back",
                        style: AppConfigTheme.buildTextStyle(
                          fontSize: 22,
                          color: Colors.grey.shade700,
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  // width: MediaQuery.of(context).size.width * 0.9,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF77C4FF),
                        Color(0xFF0085EB),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Current Balance",
                                    style: AppConfigTheme.buildTextStyle(
                                        fontSize: 24,
                                        color: AppConfigTheme.whiteColor,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Container(
                            width: 65,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.red,
                            ),
                            alignment: Alignment.center,
                            child: Text("+8.5%",
                                style: AppConfigTheme.buildTextStyle(
                                  fontSize: 18,
                                  color: AppConfigTheme.whiteColor,
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("1 230 800 XAF",
                                    style: AppConfigTheme.buildTextStyle(
                                        fontSize: 30,
                                        color: AppConfigTheme.whiteColor,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Updated recently",
                                    style: AppConfigTheme.buildTextStyle(
                                        fontSize: 16,
                                        color: AppConfigTheme.whiteColor,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Text("Withdraw now",
                              style: AppConfigTheme.buildTextStyle(
                                  fontSize: 16,
                                  color: AppConfigTheme.whiteColor,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(width: 5),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppConfigTheme.whiteColor,
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Iconsax.arrow_right_34,
                                    size: 16, color: Colors.blue)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const TitleSubContent(),
                const SizedBox(height: 10),
                const ContentAnalytic()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context)
        ],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    color: AppConfigTheme.secondaryColor,
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
      bottom: 24
    ),
    child: Column(
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundColor: AppConfigTheme.whiteColor,
          backgroundImage: AssetImage("assets/images/user-128.png"),
        ),
        Text(
          "Denis Kemayo",
          style: AppConfigTheme.buildTextStyle(
            fontSize: 25,
            color: AppConfigTheme.whiteColor            
          ),
        ),
        Text(
          "denis@gmail.com",
          style: AppConfigTheme.buildTextStyle(
            fontSize: 18,
            color: AppConfigTheme.whiteColor
          ),
        ),        
      ],
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading:  const Icon(Iconsax.home,size: 25,),
          title: Text("Dashboard",style: AppConfigTheme.buildTextStyle(),),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const DashboardSellerPage(),)
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.accessibility_new_outlined,size: 28,),
          title: Text("Products",style: AppConfigTheme.buildTextStyle(),),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ProductsListSellerPage(),)
            );
          },
        ),  
        ListTile(
          leading: const Icon(Iconsax.shopping_bag,size: 25,),
          title: Text("Orders",style: AppConfigTheme.buildTextStyle(),),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const OrdersSellerPage(),)
            );
          },
        ), 
        const Divider(color: Colors.black,),
        ListTile(
          leading: const Icon(Iconsax.logout,size: 25,),
          title: Text("Logout",style: AppConfigTheme.buildTextStyle(),),
          onTap: () {},
        ),                 
      ],
    ),
  );
}
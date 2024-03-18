import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/private/home/customer/home.dart';
import 'package:bantubuy/widgets/button_custom.dart';
import 'package:bantubuy/widgets/custom_page_route.dart';
import 'package:flutter/material.dart';

class SuccessTransaction extends StatelessWidget {
  const SuccessTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: AppConfigTheme.buildTextStyle(
            fontSize: 24,
            color: AppConfigTheme.primaryColor,
            fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConfigTheme.whiteColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: AppConfigTheme.primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ), 
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              size: 20,
              color: AppConfigTheme.primaryColor,
            ),
            onPressed: () {},
          ),
        ],          
      ), 
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: const Icon(
                    Icons.check,
                    size: 60,
                    color: AppConfigTheme.whiteColor,
                  ),
                ),
                const SizedBox(height: 15,),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Transact complete",
                    style: AppConfigTheme.buildTextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh",
                      style: AppConfigTheme.buildTextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                )                
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child:Container(
              margin: const EdgeInsets.symmetric(vertical: 1),
              child: buildCustomButton(
                child: Text(
                  'Back to home',
                  textAlign: TextAlign.center,
                  style: AppConfigTheme.buildTextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                backgroundColor: AppConfigTheme.primaryColor,
                onPressed: () {
                  Navigator.of(context).push(
                    CustomPageRoute(child: const PreviousHomePage(),direction: AxisDirection.up)
                  );
                },
                elevation: 10,
                borderRadius: 30.0,
                widthFactor: 0.98
              ),
            ), 
          ),
        ],
      ),           
    );
  }
}
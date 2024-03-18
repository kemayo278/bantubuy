import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/private/cart/payment_method.dart';
import 'package:bantubuy/widgets/button_custom.dart';
import 'package:bantubuy/widgets/custom_page_route.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfigTheme.greywhiteColor,
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: AppConfigTheme.buildTextStyle(
              fontSize: 22,
              color: AppConfigTheme.primaryColor,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConfigTheme.greywhiteColor,
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),
                    ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return const Column(
                          children: [
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.topCenter,
                              child: CartItem(),
                            ),
                            SizedBox(height: 10),
                            
                          ],
                        );
                      }
                    ),
                  ],
                ),
              ),
            ),  
            Container(
              height: 260,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  topLeft: Radius.circular(35),
                ),
                color: AppConfigTheme.whiteColor
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                child: Column(
                  children: [   
                    const SizedBox(height: 15,),         
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sub-Total :",
                           style: AppConfigTheme.buildTextStyle(
                            fontSize: 19,
                            color: Colors.grey.shade700
                          ),                          
                        ),
                        Text(
                          "35000 XFA",
                           style: AppConfigTheme.buildTextStyle(
                            fontSize: 19,
                            color: Colors.grey.shade700
                          ),  
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping Fee :",
                           style: AppConfigTheme.buildTextStyle(
                            fontSize: 19,
                            color: Colors.grey.shade700
                          ),  
                        ),
                        Text(
                          "350 XFA",
                           style: AppConfigTheme.buildTextStyle(
                            fontSize: 19,
                            color: Colors.grey.shade700
                          ),  
                        ),
                      ],
                    ),
                    const Divider(
                      height: 30,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Payment :",
                           style: AppConfigTheme.buildTextStyle(
                            fontSize: 19,
                            color: Colors.grey.shade700
                          ),  
                        ),
                        Text(
                          "35750 XFA",
                           style: AppConfigTheme.buildTextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: AppConfigTheme.primaryColor
                          ),                            
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Center(
                      child: Container(
                        child: buildCustomButton(
                          widthFactor: 1,
                          child: Text(
                            'Proceed',
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
                              CustomPageRoute(child: const Checkout(),direction: AxisDirection.left)
                            );
                          },
                          elevation: 10,
                          borderRadius: 30.0,
                        ),
                      ),
                    ),                     
                  ],
                )
              ),
            )              
          ],
        ),
      )     
    );
  }
}


class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.92,
      padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppConfigTheme.whiteColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    "assets/images/bag_1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),              
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                Text(
                                  "OFF-White Jeans",
                                  style: AppConfigTheme.buildTextStyle(
                                    fontSize: 19,
                                    color: AppConfigTheme.blackColor,
                                    fontWeight: FontWeight.w600
                                  )
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert
                            ),
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
                                Text(
                                  "Men’s fashion",
                                  style: AppConfigTheme.buildTextStyle(
                                    fontSize: 16,
                                    color: AppConfigTheme.blackColor,
                                  )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: AppConfigTheme.greywhiteColor
                            ),
                            alignment: Alignment.center,                             
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/shop_1.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "Spar bonanjo",
                                    style: AppConfigTheme.buildTextStyle(
                                      fontSize: 15,
                                    )                                
                                  ),                                                        
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                               Text(
                                "24900 XFA",
                                style: AppConfigTheme.buildTextStyle(
                                  fontSize: 17,
                                  color: AppConfigTheme.blackColor,
                                  fontWeight: FontWeight.w600
                                )                                
                              )                                                                                                                                          
                            ],
                          ),                          
                        ],
                      )                                              
                  ],
                ),
              ),
            ],
          ),
          const Divider(thickness: 2,height: 10,),
          SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppConfigTheme.greywhiteColor
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                iconSize: 18,
                                icon: const Icon(
                                  Ionicons.remove_outline,
                                  color: AppConfigTheme.blackColor,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Text(
                                "2",
                                style: AppConfigTheme.buildTextStyle(
                                  color: AppConfigTheme.blackColor,
                                  fontSize: 17
                                ),
                              ),
                              const SizedBox(width: 5,),
                              IconButton(
                                onPressed: () {},
                                iconSize: 18,
                                icon: const Icon(
                                  Ionicons.add_outline,
                                  color: AppConfigTheme.blackColor,
                                ),
                              ),                                  
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.trash,
                          size: 25,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )            
        ],
      ),
    );
  }
}
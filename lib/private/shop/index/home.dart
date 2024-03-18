import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/private/shop/detail/home.dart';
import 'package:bantubuy/widgets/custom_page_route.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ShopsPage extends StatelessWidget {
  const ShopsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfigTheme.whiteColor,
      appBar: AppBar(
        title: Text(
          "Shops",
          style: AppConfigTheme.buildTextStyle(
            fontSize: 24,
            color: AppConfigTheme.primaryColor,
            fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConfigTheme.whiteColor,
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back_ios,
        //     size: 20,
        //     color: AppConfigTheme.primaryColor,
        //   ),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),        
      ),
      body: const SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 15),
              ShopListItems(),
              SizedBox(height: 20),
              ShopListItems(),
              SizedBox(height: 20),
              ShopListItems(),
              SizedBox(height: 20),
              ShopListItems(),
            ],
          ),
        ),
      ),
    ),     
    );
  }
}

class ShopListItems extends StatelessWidget {
  const ShopListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          CustomPageRoute(child: const ShopDetail(),direction: AxisDirection.left)
        );
      },
      child: Container(
        width: screenWidth * 0.92,
        padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: AppConfigTheme.whiteColor,
          border: Border.all(color: Colors.grey),
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
                      "assets/images/shop_1.png",
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
                                    "Santa Lucia",
                                    style: AppConfigTheme.buildTextStyle(
                                      fontSize: 19,
                                      color: AppConfigTheme.blackColor,
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
                                    "Grocery shop",
                                    style: AppConfigTheme.buildTextStyle(
                                      fontSize: 17,
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
                                    const Icon(
                                      Icons.location_on,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "Douala, Foret bar",
                                      style: AppConfigTheme.buildTextStyle(
                                        fontSize: 15,
                                      )                                
                                    ),                                                        
                                  ],
                                ),
                              ),
                            ),
                            const Row(
                              children: [
                                 Icon(
                                  Iconsax.star1,
                                  size: 20,
                                  color: Colors.orange,
                                ),
                                SizedBox(width: 2),    
                                 Icon(
                                  Iconsax.star1,
                                  size: 20,
                                  color: Colors.orange,
                                ),
                                SizedBox(width: 2),        
                                 Icon(
                                  Iconsax.star1,
                                  size: 20,
                                  color: Colors.orange,
                                ),
                                SizedBox(width: 2),    
                                 Icon(
                                  Iconsax.star1,
                                  size: 20,
                                  color: Colors.orange,
                                ),
                                SizedBox(width: 2),    
                                 Icon(
                                  Icons.star_border_outlined,
                                  size: 18,
                                ),
                                SizedBox(width: 2),                                                                                                                                           
                              ],
                            ),                          
                          ],
                        )                                              
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
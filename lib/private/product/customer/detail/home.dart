import 'package:bantubuy/config_theme.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:readmore/readmore.dart';

class ProductViewCustomer extends StatefulWidget {
  const ProductViewCustomer({super.key});

  @override
  State<ProductViewCustomer> createState() => _ProductViewCustomerState();
}

class _ProductViewCustomerState extends State<ProductViewCustomer> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfigTheme.greywhiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            width: 47,
                            height: 47,
                            decoration: BoxDecoration(
                              color: AppConfigTheme.whiteColor,
                              borderRadius: BorderRadius.circular(8),
                            ),                    
                            child: Align(
                              alignment: Alignment.center,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Ionicons.chevron_back,
                                  color: AppConfigTheme.primaryColor,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: 47,
                            height: 47,
                            decoration: BoxDecoration(
                              color: AppConfigTheme.whiteColor,
                              borderRadius: BorderRadius.circular(8),
                            ),                    
                            child: Align(
                              alignment: Alignment.center,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Ionicons.heart_outline,
                                  color: AppConfigTheme.primaryColor,
                                ),
                              ),
                            ),
                          ),  
                          const SizedBox(width: 5,),
                          Container(
                            width: 47,
                            height: 47,
                            decoration: BoxDecoration(
                              color: AppConfigTheme.whiteColor,
                              borderRadius: BorderRadius.circular(8),
                            ),                    
                            child: Align(
                              alignment: Alignment.center,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Ionicons.share_social_outline,
                                  color: AppConfigTheme.secondaryColor,
                                ),
                              ),
                            ),
                          ),                                  
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: PageView.builder(
                        itemCount: 4,
                        onPageChanged: (value) => setState(() {
                          currentImage = value;
                        }),
                        itemBuilder: (context, index) {
                          return Image.asset("assets/images/bag_1.png");
                        },
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                        List.generate(4, (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: currentImage == index ? 15 : 10,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: currentImage == index ? Colors.transparent : Colors.black
                              ),
                              color: currentImage == index ? AppConfigTheme.primaryColor : Colors.transparent
                            ),
                          ),
                        )
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(35),
                          topLeft: Radius.circular(35),
                        ),
                        color: AppConfigTheme.whiteColor
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wireless Bag Shop",
                            style: AppConfigTheme.buildTextStyle(
                              fontSize: 25,
                              color: AppConfigTheme.blackColor,
                              fontWeight: FontWeight.bold,
                            )                       
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "23600 XFA",
                                        style: AppConfigTheme.buildTextStyle(
                                          fontSize: 18,
                                          color: AppConfigTheme.blackColor,
                                          fontWeight: FontWeight.w600,
                                        ),                       
                                      ),
                                      const SizedBox(width: 10,),      
                                      Text(
                                        "24600 XFA",
                                        style: AppConfigTheme.buildTextStyle(
                                          fontSize: 17,
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.lineThrough,
                                          decorationColor: AppConfigTheme.primaryColor,
                                        ),                       
                                      ),                              
                                    ],
                                  ),                                           
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: AppConfigTheme.primaryColor,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 2
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Ionicons.star,
                                        size: 15,
                                        color: AppConfigTheme.whiteColor,
                                      ),
                                      SizedBox(width: 4,),
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: AppConfigTheme.whiteColor,
                                          fontWeight: FontWeight.bold,
                                        )                       
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              IntrinsicWidth(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppConfigTheme.greywhiteColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/santalucia.png",
                                          width: 20,
                                          height: 20,
                                        ), 
                                        const SizedBox(width: 4),
                                        const Expanded(
                                          child: Text(
                                            "Santa Lucia - Douala, Foret bar",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppConfigTheme.blackColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(thickness: 1,height: 20,),
                          const SizedBox(height: 10,),
                          ReadMoreText(
                            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim adLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim adeuismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad",
                            trimLines: 4,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: " show more",
                            trimExpandedText: " show less",
                            moreStyle: const TextStyle(
                              color: AppConfigTheme.secondaryColor,
                              fontWeight: FontWeight.bold
                            ),
                            lessStyle: const TextStyle(
                              color: AppConfigTheme.secondaryColor,
                              fontWeight: FontWeight.bold
                            ),
                            style: AppConfigTheme.buildTextStyle(
                              fontSize: 15,
                            )  
                          ),                  
                        ],
                      ),
                    )                
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppConfigTheme.greywhiteColor
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2
                                ),
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
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(AppConfigTheme.primaryColor),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                      borderRadius:BorderRadius.circular(5)
                                  )
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "buy now".toUpperCase(),
                                    style: AppConfigTheme.buildTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: AppConfigTheme.whiteColor
                                    )                                     
                                  )
                               ],
                              )
                            )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )            
          ],
        ),
      ),
    );
  }
}
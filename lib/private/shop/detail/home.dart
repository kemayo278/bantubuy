import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/private/shop/detail/subcontent.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ShopDetail extends StatelessWidget {
  const ShopDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfigTheme.whiteColor,
      appBar: AppBar(
        title: Text(
          "Shop Detail",
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
      ),      
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 2,right: 2),
          color: Colors.transparent,
          constraints: const BoxConstraints.expand(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/santalucia_cv.jpeg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 80,right: 90),
                      child: const CircleAvatar(
                        radius: 74,
                        backgroundColor: AppConfigTheme.whiteColor,
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage("assets/images/santalucia.png"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 190,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(width: 36,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: AppConfigTheme.whiteColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(50)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 4.0,
                                  spreadRadius: 0.05,
                                ),
                              ],                              
                            ),
                            child: const Icon(
                              Iconsax.star,
                              color: Colors.black45,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: AppConfigTheme.whiteColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(50)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 4.0,
                                  spreadRadius: 0.05,
                                ),
                              ],                              
                            ),
                            child: const Icon(
                              Icons.more_vert,
                              color: Colors.black45,
                            ),
                          )                          
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,),
                  child: Text(
                    "Santa Lucia, Bonaberi",
                    style: AppConfigTheme.buildTextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),              
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,),
                  child: Text(
                    "A well-equipped supermarket serves as a grocery shop.",
                    style: AppConfigTheme.buildTextStyle(
                      fontSize: 19,
                      color: Colors.grey.shade800
                    ),              
                  ),
                ),    
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,),
                  child: TitleSubContent(),
                ), 
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,),
                  child: DealsList(),
                ),         
              ],
            ),
          ),
        ),
      ),      
    );
  }
}
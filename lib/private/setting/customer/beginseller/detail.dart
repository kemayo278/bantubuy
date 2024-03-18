import 'package:bantubuy/config_theme.dart';
import 'package:flutter/material.dart';

class DetailsellerPage extends StatelessWidget {
  const DetailsellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfigTheme.greywhiteColor,
      appBar: AppBar(
        title: Text(
          "Contact us",
          style: AppConfigTheme.buildTextStyle(
            fontSize: 24,
            color: AppConfigTheme.secondaryColor,
            fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConfigTheme.greywhiteColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: AppConfigTheme.secondaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Stack(children: [
            SizedBox(
              width: 160,
              height: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ]),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppConfigTheme.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      color: AppConfigTheme.secondaryColor,
                      size: 30,
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppConfigTheme.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      color: AppConfigTheme.secondaryColor,
                      size: 30,
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppConfigTheme.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      color: AppConfigTheme.secondaryColor,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25,),          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppConfigTheme.whiteColor,
                  borderRadius: BorderRadius.circular(15.0)
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              "Contact Information",
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
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            size: 20,
                            color: AppConfigTheme.secondaryColor,
                          ),
                          const SizedBox(width: 5),
                          Text("+237 650 43 59 30",
                            style: AppConfigTheme.buildTextStyle(
                              fontSize: 15,
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            size: 20,
                            color: AppConfigTheme.secondaryColor,
                          ),
                          const SizedBox(width: 5),
                          Text("bantubuy.support@bantuby.cm",
                            style: AppConfigTheme.buildTextStyle(
                              fontSize: 15,
                            )
                          ),
                        ],
                      ),
                    ],
                  ), 
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            size: 20,
                            color: AppConfigTheme.secondaryColor,
                          ),
                          const SizedBox(width: 5),
                          Text("@bantubuy",
                            style: AppConfigTheme.buildTextStyle(
                              fontSize: 15,
                            )
                          ),
                        ],
                      ),
                    ],
                  ),                                
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

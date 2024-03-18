import 'package:bantubuy/config_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

class OrdersSellerPage extends StatelessWidget {
  const OrdersSellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConfigTheme.whiteColor,
        appBar: AppBar(
            title: Text(
              "My Orders",
              style: GoogleFonts.nunito(
                  fontSize: 20, color: AppConfigTheme.secondaryColor),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: AppConfigTheme.whiteColor,
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
            automaticallyImplyLeading: false),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Orders",
                          style: AppConfigTheme.buildTextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          )),
                      InkWell(
                        onTap: () {},
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Ionicons.options_outline,
                            size: 25,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ]),
              ),
              ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return const Column(
                      children: [
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topCenter,
                          child: OrdersListItems(),
                        ),
                        SizedBox(height: 10),
                      ],
                    );
                  }),
            ],
          ),
        ));
  }
}

class OrdersListItems extends StatelessWidget {
  const OrdersListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                "Order Id",
                style: AppConfigTheme.buildTextStyle(
                  fontSize: 18,
                )
              ),
              const SizedBox(width: 4,),
              Text(
                "604520DFT",
                style: AppConfigTheme.buildTextStyle(
                  fontSize: 18,
                  color: AppConfigTheme.blackColor,
                  fontWeight: FontWeight.bold
                )
              ), 
              const SizedBox(width: 4,),           
              const Icon(
                Icons.attach_file,
                size: 20,
                color: Colors.blue,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: screenWidth * 0.92,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: const Color(0xFFF2F9FF),
            border: Border.all(color: const Color.fromARGB(255, 207, 232, 253)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
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
                                    "Pickup",
                                    style: AppConfigTheme.buildTextStyle(
                                      fontSize: 19,
                                      color: AppConfigTheme.blackColor,
                                    )
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color.fromARGB(255, 215, 236, 255),
                              ),
                              alignment: Alignment.center,
                              child: Text("Pending",
                                  style: AppConfigTheme.buildTextStyle(
                                    fontSize: 15,
                                    color: Colors.orange,
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const SizedBox(width: 5),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("9403 Bonassama, Douala",
                                      style: AppConfigTheme.buildTextStyle(
                                        fontSize: 17,
                                        color: AppConfigTheme.blackColor,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.date_range,
                                  size: 20,
                                  color: AppConfigTheme.secondaryColor,
                                ),
                                const SizedBox(width: 5),
                                Text("12/01/2024",
                                    style: AppConfigTheme.buildTextStyle(
                                      fontSize: 15,
                                    )),
                                const SizedBox(width: 10),
                                const Icon(
                                  Iconsax.profile,
                                  size: 20,
                                  color: AppConfigTheme.secondaryColor,
                                ),
                                const SizedBox(width: 2),
                                Text("10:00 am - 08: 30 pm",
                                    style: AppConfigTheme.buildTextStyle(
                                      fontSize: 15,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.person_2,
                                  size: 20,
                                  color: AppConfigTheme.secondaryColor,
                                ),
                                const SizedBox(width: 5),
                                Text("Stephane",
                                    style: AppConfigTheme.buildTextStyle(
                                      fontSize: 15,
                                    )),
                                const SizedBox(width: 10),
                                const Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: AppConfigTheme.secondaryColor,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text("678899045",
                                    style: AppConfigTheme.buildTextStyle(
                                      fontSize: 15,
                                    )),
                                const SizedBox(width: 10),
                                const Icon(
                                  Icons.location_history,
                                  size: 20,
                                  color: AppConfigTheme.secondaryColor,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text("den@gmail.com",
                                    style: AppConfigTheme.buildTextStyle(
                                      fontSize: 15,
                                    )),
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
        )
      ],
    );
  }
}

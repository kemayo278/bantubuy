import 'package:bantubuy/config_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfigTheme.greywhiteColor,
      appBar: AppBar(
        title: Text(
          "Orders",
          style: AppConfigTheme.buildTextStyle(
              fontSize: 22,
              color: AppConfigTheme.primaryColor,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppConfigTheme.greywhiteColor,
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
        // automaticallyImplyLeading: false
      ),
        body: SingleChildScrollView(
          child: ListView.builder(
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
            }
          ),
        ),
    );
  }
}

class OrdersListItems extends StatelessWidget {
  const OrdersListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.9,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade400),
        color: AppConfigTheme.whiteColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Icon(Iconsax.ship),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Processing",
                      style: GoogleFonts.nunito(color: Colors.amber),
                    ),
                    Text(
                      "07 Nov 2024",
                      style: GoogleFonts.nunito(fontSize: 17),
                    ),
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_34, size: 16))
            ],
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Icon(Iconsax.tag),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Order",
                            style: GoogleFonts.nunito(),
                          ),
                          Text(
                            "[#CMD2032345]",
                            style: GoogleFonts.nunito(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    const Icon(Iconsax.calendar),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Total Amount",
                            style: GoogleFonts.nunito(),
                          ),
                          Text(
                            "24345 XFA",
                            style: GoogleFonts.nunito(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

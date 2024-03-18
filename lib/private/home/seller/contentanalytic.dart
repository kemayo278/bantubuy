import 'package:bantubuy/config_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ContentAnalytic extends StatelessWidget {
  const ContentAnalytic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const ContentAnalyticItem(index: 20 ,title: "All Products",),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const ContentAnalyticItem(index: 34 ,title: "Orders",),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const ContentAnalyticItem(index: 12,title: "All Products",),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const ContentAnalyticItem(index: 07,title: "All Products",),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContentAnalyticItem extends StatelessWidget {
  final int index;
  final String title;

  const ContentAnalyticItem({Key? key, required this.index , required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4.0,
              spreadRadius: 0.05,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.star,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
                Text(
                  title,
                  style: AppConfigTheme.buildTextStyle(
                    fontSize: 17,
                    color: AppConfigTheme.blackColor,
                  )
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "$index",
                  style: AppConfigTheme.buildTextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                  )
                ),
                const SizedBox(width: 10),
                Text(
                  "items",
                  style: AppConfigTheme.buildTextStyle(
                    fontSize: 19,
                  )
                ),                
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/private/product/customer/detail/home.dart';
import 'package:bantubuy/widgets/custom_page_route.dart';
import 'package:flutter/material.dart';

class TitleSubContent extends StatelessWidget {
  const TitleSubContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Bantu Deals",
              style: AppConfigTheme.buildTextStyle(
                color: Colors.grey.shade800,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "View All",
                style: AppConfigTheme.buildTextStyle(
                  color: AppConfigTheme.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )
              ),
            )
          ]
        ),
      ]
    );
  }
}


class DealsList extends StatefulWidget {
  const DealsList({super.key});

  @override
  State<DealsList> createState() => _DealsListState();
}

class _DealsListState extends State<DealsList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 7,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 20,
        mainAxisSpacing: 24,
      ),
      itemBuilder: (context, index) {
        return const DealCard();
      }
    );
  }
}

class DealCard extends StatelessWidget {
  const DealCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          CustomPageRoute(child: const ProductViewCustomer(),direction: AxisDirection.left)
        );        
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
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
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                width: double.infinity,
                height: 130,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child:Image.asset(
                    'assets/images/bag_1.png',
                  )
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "The north face",
              maxLines: 1,
              style: AppConfigTheme.buildTextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              )              
            ),
            const SizedBox(height: 5),
            const Text('The North Face UNIX LECOM - Chapeau Noire')
          ],
        ),
      ),
    );
  }
}
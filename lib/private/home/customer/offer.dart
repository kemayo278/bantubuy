import 'dart:async';
import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  int _selectedPromo = 0;

  List<String> imagePaths = [
    "assets/images/bag_1.png",
    "assets/images/xiaomi-redmi-note.webp",
    "assets/images/t-shirt.jpg",
  ];

  late Timer timer;
  final PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_selectedPromo < 3) {
        _selectedPromo++;
      } else {
        _selectedPromo = 0;
      }

      if (controller.positions.isNotEmpty) {
        controller.animateToPage(_selectedPromo,
          duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.transparent
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            onPageChanged: (int selectedPage) {
              setState(() {
                _selectedPromo = selectedPage;
              });
            },
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 0; index < imagePaths.length; index++)
                  if (index == _selectedPromo) ...[createCircle(true)] else
                    createCircle(false)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget createCircle(bool isCurrent) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: isCurrent ? 12 : 10,
      width: isCurrent ? 12 : 10,
      decoration: BoxDecoration(
        color: isCurrent ? Colors.red : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}


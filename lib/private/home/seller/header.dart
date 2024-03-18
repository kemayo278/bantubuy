import 'package:bantubuy/config_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            autofocus: false,
            readOnly: false,
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 19),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 1),
                child: Icon(
                  Icons.search,
                  size: 35,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              fillColor: Colors.white,
            ),
            // onTap: () {},
          ),
        ),
        const SizedBox(width: 5),
        Container(
          width: 47,
          height: 47,
          decoration: BoxDecoration(
            color: AppConfigTheme.whiteColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  const Icon(
                    Iconsax.notification,
                  ),
                  Container(
                    height: 13,
                    width: 13,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              )
            ),
        ),
        const SizedBox(width: 5),
        Container(
          width: 47,
          height: 47,
          decoration: BoxDecoration(
            color: AppConfigTheme.whiteColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            onPressed: () {
               Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.grey.shade800,
            ),
          ),
        ),
      ],
    );
  }
}

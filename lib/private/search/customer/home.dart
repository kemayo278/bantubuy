import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/private/home/customer/header.dart';
import 'package:flutter/material.dart';

class SearchCustomerPage extends StatelessWidget {
  const SearchCustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const HeaderHomePage(),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Toutes les Categories",
                    style: AppConfigTheme.buildTextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),                  
                ],
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "categoryName",
                          style: AppConfigTheme.buildTextStyle(
                            fontSize: 18
                          ),
                        ),
                        trailing: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const Divider(thickness: 1,height: 5,),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:bantubuy/config_theme.dart';
import 'package:flutter/material.dart';

class ContentNotificationCustomerSection extends StatelessWidget {
  const ContentNotificationCustomerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 10),
              TitleSubContentNotificationSection(),
              ListNotificationCustomer()
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSubContentNotificationSection extends StatelessWidget {
  const TitleSubContentNotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Your Activity",
            style: AppConfigTheme.buildTextStyle(
              color: Colors.grey.shade800,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        InkWell(
          onTap: () {},
          child: Text("See more",
              style: AppConfigTheme.buildTextStyle(
                color: AppConfigTheme.primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
        )
      ]),
    ]);
  }
}

class ListNotificationCustomer extends StatelessWidget {
  const ListNotificationCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              tileColor: Colors.grey[200],
              leading: Container(
                width: 60,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 244, 199, 188),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(
                  Icons.mark_email_unread,
                  size: 40,
                  color: AppConfigTheme.primaryColor,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New message from admin",
                    style: AppConfigTheme.buildTextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),                    
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam",
                    style: AppConfigTheme.buildTextStyle(
                      fontSize: 17,
                    ),  
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "12 Jan 2024 12H30",
                    style: AppConfigTheme.buildTextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),                     
                  ),
                ],
              ),
              trailing: const Icon(Icons.arrow_forward),
            ),
          ),
        );
      },
    );
  }
}

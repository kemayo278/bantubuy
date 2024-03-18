import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/private/notification/customer/content.dart';
import 'package:flutter/material.dart';

class NotificationCustomerPage extends StatelessWidget {
  const NotificationCustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: AppConfigTheme.buildTextStyle(
            fontSize: 24,
            color: AppConfigTheme.primaryColor, 
            fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
        centerTitle: false,
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
      body:   const ContentNotificationCustomerSection(),
    );
  }
}

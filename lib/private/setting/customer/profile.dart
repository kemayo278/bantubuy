import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/private/setting/customer/beginseller/home.dart';
import 'package:bantubuy/widgets/custom_page_route.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        title: Text(
          "Settings",
          style: AppConfigTheme.buildTextStyle(
              fontSize: 22,
              color: AppConfigTheme.primaryColor,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFEEEEEE),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: const Color(0xFFEEEEEE),
        child: const ContentProfilePage(),
      ),
    );
  }
}

class ContentProfilePage extends StatefulWidget {
  const ContentProfilePage({super.key});

  @override
  State<ContentProfilePage> createState() => _ContentProfilePageState();
}

class _ContentProfilePageState extends State<ContentProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 65,
                    height: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/images/t-shirt.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Denis kemayo",
                        style: AppConfigTheme.buildTextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "kemayo@gmail.com",
                        style: AppConfigTheme.buildTextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                      child:
                          Container()),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.edit,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "General",
                    style: AppConfigTheme.buildTextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ProfileInformationMenuWidget(),
            const SizedBox(
              height: 10,
            ),
            const ProfileTermConditionMenuWidget(),
            const SizedBox(
              height: 10,
            ),
            const ProfileLanguageMenuWidget(),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "Preferences",
                    style: AppConfigTheme.buildTextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ProfileLogoutMenuWidget(),
          ],
        ),
      ),
    );
  }
}

class ProfileTermConditionMenuWidget extends StatelessWidget {
  const ProfileTermConditionMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          CustomPageRoute(child: const NewAccountSeller(),direction: AxisDirection.left)
        );   
      },
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.shade300),
        child: const Icon(
          Icons.store,
        ),
      ),
      title: Text(
        "Become a seller",
        style: AppConfigTheme.buildTextStyle(),
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(0.1)),
        child: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class ProfileInformationMenuWidget extends StatelessWidget {
  const ProfileInformationMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.shade300),
        child: const Icon(
          Icons.info,
        ),
      ),
      title: Text(
        "About Bantubuy",
        style: AppConfigTheme.buildTextStyle(),
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(0.1)),
        child: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class ProfileLanguageMenuWidget extends StatefulWidget {
  const ProfileLanguageMenuWidget({
    super.key,
  });

  @override
  State<ProfileLanguageMenuWidget> createState() =>
      _ProfileLanguageMenuWidgetState();
}

class _ProfileLanguageMenuWidgetState extends State<ProfileLanguageMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Material(
                      elevation: 10,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: Colors.grey.shade300,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 140,
                            vertical: 15,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'French',
                          style: AppConfigTheme.buildTextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Material(
                      elevation: 10,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: AppConfigTheme.primaryColor,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 140,
                            vertical: 15,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'English',
                          style: AppConfigTheme.buildTextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ));
      },
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.shade300),
        child: const Icon(
          Icons.language,
        ),
      ),
      title: Text(
        "Language",
        style: AppConfigTheme.buildTextStyle(),
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(0.1)),
        child: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class ProfileLogoutMenuWidget extends StatelessWidget {
  const ProfileLogoutMenuWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Confirm Logout'),
              content: const Text('Are you sure you want to logout?'),
              actions: [
                TextButton(
                  child: Text(
                    'Cancel',
                    style: AppConfigTheme.buildTextStyle(),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text(
                    'Logout',
                    style: AppConfigTheme.buildTextStyle(
                      color: AppConfigTheme.primaryColor
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            );
          },
        );
      },
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.shade300),
        child: const Icon(
          Icons.logout,
          color: Colors.red,
        ),
      ),
      title: Text(
        "Logout",
        style: AppConfigTheme.buildTextStyle(),
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(0.1)),
        child: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}

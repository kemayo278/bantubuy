import 'package:bantubuy/auth/sign_in.dart';
import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/widgets/custom_page_route.dart';
import 'package:bantubuy/widgets/delayed_animation.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reset Password",
          style: AppConfigTheme.buildTextStyle(
            fontSize: 24,
            color: Colors.black87,
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
            color: AppConfigTheme.blackColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),        
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 1),
              child: DelayedAnimation(
                delay: 500,
                child: Text(
                  "At least 9 characters, with uppercase and lower case letters",
                  style: AppConfigTheme.buildTextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    DelayedAnimation(
                      delay: 700,
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          label: Text("Password"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide(width: 1.5, color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide(width: 1.5, color: Colors.grey),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    const SizedBox(height: 30),
                    DelayedAnimation(
                      delay: 800,
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          label: Text("Confirm Password"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide(width: 1.5, color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide(width: 1.5, color: Colors.grey),
                          )
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),      
                ],
              ),
            ),
            const SizedBox(height: 15),
            DelayedAnimation(
              delay: 1100,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                    child: Material(
                      elevation: 10,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppConfigTheme.primaryColor,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            CustomPageRoute(child: const SignInPage(),direction: AxisDirection.down)
                          );                          
                        },
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Reset',
                            textAlign: TextAlign.center,
                            style: AppConfigTheme.buildTextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )       
          ],
        ),
      ),
    );
  }
}
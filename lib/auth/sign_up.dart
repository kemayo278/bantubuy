import 'package:bantubuy/auth/sign_in.dart';
import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/widgets/button_custom.dart';
import 'package:bantubuy/widgets/custom_page_route.dart';
import 'package:bantubuy/widgets/delayed_animation.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var obscureText = true;
  var obscureTextTorepeat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DelayedAnimation(
                      delay: 500,
                      child: Text(
                        "Sign up to ",
                        style: AppConfigTheme.buildTextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    DelayedAnimation(
                      delay: 500,
                      child: Text(
                        "Bantubuy",
                        style: AppConfigTheme.buildTextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: AppConfigTheme.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DelayedAnimation(
                      delay: 800,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          label: Text("First Name"),
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
                      delay: 900,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Second Name"),
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
                      delay: 1000,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Email"),
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
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(height: 30),
                    DelayedAnimation(
                      delay: 1100,
                      child: TextFormField(
                        obscureText: obscureText,
                        decoration: InputDecoration(
                          label: const Text("Password"),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide(width: 1.5, color: Colors.grey),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide(width: 1.5, color: Colors.grey),
                          ),  
                          suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    const SizedBox(height: 30),
                    DelayedAnimation(
                      delay: 1200,
                      child: TextFormField(
                        obscureText: obscureTextTorepeat,
                        decoration: InputDecoration(
                          label: const Text("Confirm Password"),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide(width: 1.5, color: Colors.grey),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide(width: 1.5, color: Colors.grey),
                          ),  
                          suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                obscureTextTorepeat = !obscureTextTorepeat;
                              });
                            },
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),                    
                  ],
                ),
              ),
              const SizedBox(height: 35),
              DelayedAnimation(
                delay: 1500,
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: buildCustomButton(
                      child: Text(
                        'Sign up',
                        textAlign: TextAlign.center,
                        style: AppConfigTheme.buildTextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      backgroundColor: AppConfigTheme.primaryColor,
                      onPressed: () {
                        // Action à exécuter lors du clic sur le bouton
                      },
                      elevation: 10,
                      borderRadius: 30.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              DelayedAnimation(
                delay: 1600,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "By tapping continue, you accept our ",
                                style: TextStyle(
                                  color: Colors.black45
                                ),
                              ),
                              Text(
                                "Terms and Conditions",
                                style: TextStyle(
                                  color: AppConfigTheme.secondaryColor,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "and ",
                                 style: TextStyle(
                                  color: Colors.black45
                                ),
                              ),
                              Text(
                                "Privacy Policy",
                                style: TextStyle(
                                  color: AppConfigTheme.secondaryColor,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              DelayedAnimation(
                delay: 1700,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: AppConfigTheme.buildTextStyle(
                                fontSize: 17,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  CustomPageRoute(child: const SignInPage(),direction: AxisDirection.down)
                                );                                
                              },
                              child: Text(
                                "Sign In",
                                style: AppConfigTheme.buildTextStyle(
                                  fontSize: 18,
                                  color: AppConfigTheme.primaryColor,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

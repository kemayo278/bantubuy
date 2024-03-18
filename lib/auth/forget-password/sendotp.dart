import 'package:bantubuy/auth/forget-password/reset.dart';
import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/widgets/custom_page_route.dart';
import 'package:bantubuy/widgets/delayed_animation.dart';
import 'package:flutter/material.dart';

class SendOtpPage extends StatefulWidget {
  const SendOtpPage({super.key});

  @override
  State<SendOtpPage> createState() => _SendOtpPageState();
}

class _SendOtpPageState extends State<SendOtpPage> {
  List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verification",
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
                  "Enter you phone number to enable 2-step verification",
                  style: AppConfigTheme.buildTextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DelayedAnimation(
                    delay: 800,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < 4; i++)
                          SizedBox(
                            width: 75.0,
                            child: Material(
                              elevation: 10,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              child: TextField(
                                controller: controllers[i],
                                autofocus: true,
                                maxLength: 1,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  if (value.isNotEmpty && i < 3) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                onEditingComplete: () {
                                  if (i == 4) {
                                    FocusScope.of(context).unfocus();
                                  }
                                },
                                onTap: () {
                                  controllers[i].selection = TextSelection.fromPosition( const TextPosition(offset: 0));
                                },
                                style: AppConfigTheme.buildTextStyle(
                                  fontSize: 20,
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold
                                ),
                                decoration: InputDecoration(
                                  counterText: "",
                                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                                  labelStyle: AppConfigTheme.buildTextStyle(
                                    color: Colors.grey[700],
                                  ),
                                  border: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
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
                            CustomPageRoute(child: const ResetPasswordPage(),direction: AxisDirection.right)
                          );                          
                        },
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Continue',
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
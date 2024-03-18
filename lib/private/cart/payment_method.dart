import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/private/cart/succes_transaction.dart';
import 'package:bantubuy/widgets/button_custom.dart';
import 'package:bantubuy/widgets/custom_page_route.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int _type = 1;
  void _handleRadio (Object? e) => setState(() {
    _type = e as int;
  });

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: AppConfigTheme.buildTextStyle(
            fontSize: 24,
            color: AppConfigTheme.primaryColor,
            fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
        centerTitle: true,
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
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              size: 20,
              color: AppConfigTheme.primaryColor,
            ),
            onPressed: () {},
          ),
        ],          
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                Text(
                  "Payment method",
                  style: AppConfigTheme.buildTextStyle(
                    fontSize: 21,
                    color: AppConfigTheme.blackColor,
                    fontWeight: FontWeight.w600
                  ),  
                ),  
                const SizedBox(height: 20,),                              
                Container(
                  width: size.width,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: _type == 1 ? Border.all(width: 1,color: AppConfigTheme.secondaryColor) : Border.all(width: 0.3,color: Colors.grey)
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(value: 1, groupValue: _type, onChanged: _handleRadio, activeColor: AppConfigTheme.secondaryColor,),
                              Text(
                                "Orange Money",
                                style: _type == 1 ? AppConfigTheme.buildTextStyle(fontSize: 17,color: AppConfigTheme.blackColor,fontWeight: FontWeight.w500) : AppConfigTheme.buildTextStyle(fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                            child: Image.asset(
                              "assets/images/orange-money.jpeg",
                              width: 60,
                              height: 60,
                              // fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                Container(
                  width: size.width,
                  height: 70,
                  // margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: _type == 2 ? Border.all(width: 1,color: AppConfigTheme.secondaryColor) : Border.all(width: 0.3,color: Colors.grey)
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(value: 2, groupValue: _type, onChanged: _handleRadio, activeColor: AppConfigTheme.secondaryColor,),
                              Text(
                                "visa",
                                style: _type == 2 ? AppConfigTheme.buildTextStyle(fontSize: 17,color: AppConfigTheme.blackColor,fontWeight: FontWeight.w500) : AppConfigTheme.buildTextStyle(fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                            child: Image.asset(
                              "assets/images/visa_cart.jpeg",
                              width: 60,
                              height: 60,
                              // fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                Container(
                  width: size.width,
                  height: 70,
                  // margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: _type == 3 ? Border.all(width: 1,color: AppConfigTheme.secondaryColor) : Border.all(width: 0.3,color: Colors.grey)
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(value: 3, groupValue: _type, onChanged: _handleRadio, activeColor: AppConfigTheme.secondaryColor,),
                              Text(
                                "Mtn Money",
                                style: _type == 3 ? AppConfigTheme.buildTextStyle(fontSize: 17,color: AppConfigTheme.blackColor,fontWeight: FontWeight.w500) : AppConfigTheme.buildTextStyle(fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                            child: Image.asset(
                              "assets/images/mtn-momo.png",
                              width: 60,
                              height: 60,
                              // fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 30,
                  color: Colors.black,
                ),
              const SizedBox(height: 25,),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 1),
                child: buildCustomButton(
                  child: Text(
                    'Proceed',
                    textAlign: TextAlign.center,
                    style: AppConfigTheme.buildTextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  backgroundColor: AppConfigTheme.primaryColor,
                  onPressed: () {
                    Navigator.of(context).push(
                      CustomPageRoute(child: const SuccessTransaction(),direction: AxisDirection.left)
                    );
                  },
                  elevation: 10,
                  borderRadius: 30.0,
                  widthFactor: 0.98
                ),
              ),                                                                             
              ],
            ),
          ),
        ),
      ),
    );
  }
}
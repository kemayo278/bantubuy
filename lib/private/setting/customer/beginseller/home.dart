import 'package:bantubuy/config_theme.dart';
import 'package:bantubuy/widgets/button_custom.dart';
import 'package:bantubuy/widgets/delayed_animation.dart';
import 'package:flutter/material.dart';

class NewAccountSeller extends StatelessWidget {
  const NewAccountSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfigTheme.whiteColor,
      appBar: AppBar(
        title: Text(
          "Become a Seller",
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
      ),      
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 2,right: 2),
          color: Colors.transparent,
          constraints: const BoxConstraints.expand(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/santalucia_cv.jpeg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 110,right: 160),
                      height: 100,
                      width: 100,                      
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: AppConfigTheme.secondaryColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50)
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 4.0,
                            spreadRadius: 0.05,
                          ),
                        ],                              
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        color: AppConfigTheme.whiteColor,
                        size: 70,
                      ),
                    ),                    
                    Container(
                      margin: const EdgeInsets.only(top: 130,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(width: 36,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: AppConfigTheme.whiteColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 4.0,
                                  spreadRadius: 0.05,
                                ),
                              ],                              
                            ),
                            child: Text(
                              "Ajouter une photo",
                              style: AppConfigTheme.buildTextStyle(),
                            ),
                          ),                        
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                const SizedBox(height: 10), 
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text("Shop name"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                          ),            
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      const SizedBox(height: 15, ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text("Address"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                          ),                         
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      const SizedBox(height: 15, ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text("Phone"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                          ),                                     
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      const SizedBox(height: 15, ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text("Country"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                          ),                                                                         
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      const SizedBox(height: 15, ),                    
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text("Description"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                          ),                                                                                                             
                          maxLines: 5,
                          keyboardType: TextInputType.text,
                        ),
                      ), 
                      const SizedBox(height: 25, ),
                      DelayedAnimation(
                        delay: 1500,
                        child: Center(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: buildCustomButton(
                              child: Text(
                                'Submit',
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
                    ],
                  ),
                )                          
              ],
            ),
          ),
        ),
      ),      
    );
  }
}
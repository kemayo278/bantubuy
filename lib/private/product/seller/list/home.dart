import 'package:bantubuy/config_theme.dart';
import 'package:flutter/material.dart';

class ProductsListSellerPage extends StatelessWidget {
  const ProductsListSellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfigTheme.greywhiteColor,
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppConfigTheme.secondaryColor,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 30
          ),
      ),
      appBar: AppBar(
        title: Text(
          "Products",
          style: AppConfigTheme.buildTextStyle(
            fontSize: 22,
            color: AppConfigTheme.secondaryColor,
            fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConfigTheme.greywhiteColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: AppConfigTheme.secondaryColor,
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
              color: AppConfigTheme.secondaryColor,
            ),
            onPressed: () {},
          ),
        ],          
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Products List",
                  style: AppConfigTheme.buildTextStyle(
                    fontSize: 25,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
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
                  ],
                ),
                const SizedBox(height: 15),
                const ProductsListSeller()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ProductsListSeller extends StatefulWidget {
  const ProductsListSeller({super.key});

  @override
  State<ProductsListSeller> createState() => _ProductsListSellerState();
}

class _ProductsListSellerState extends State<ProductsListSeller> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 7,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 20,
        mainAxisSpacing: 24,
      ),
      itemBuilder: (context, index) {
        return const ProductItemSeller();
      }
    );
  }
}

class ProductItemSeller extends StatelessWidget {
  const ProductItemSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
    
      },
      child: SizedBox(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4.0,
                spreadRadius: 0.05,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  width: double.infinity,
                  height: 130,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child:Image.asset(
                      'assets/images/bag_1.png',
                    )
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "LV Hats",
                    style: AppConfigTheme.buildTextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    )              
                  ),
                  Text(
                    "15 000 XAF",
                    style: AppConfigTheme.buildTextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )              
                  ),                
                ],
              ),
              const SizedBox(height: 5),
              const Text('Lorem ipsum dolor sit amet dolor sit amet'),            
            ],
          ),
        ),
      ),
    );
  }
}
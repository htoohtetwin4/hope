import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:hope_app/models/Products.dart';
import 'package:hope_app/screens/product/cart_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;
  const ProductDetailScreen({Key? key, required this.product})
      : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.33,
            child: Image.asset(
              'assets/images/product5.jpg',
              fit: BoxFit.cover,
            ),
          ),
          _backArrow(context),
          _productDetailBox(),
        ],
      ),
    ));
  }

  _backArrow(context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: Icon(Icons.arrow_back_ios_new),
            ),
          ),
        ),
      ),
    );
  }

  _productDetailBox() {
    return DraggableScrollableSheet(
      initialChildSize: 0.65,
      maxChildSize: 1,
      minChildSize: 0.65,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: FittedBox(
                        child: Text(
                          "Dummy Product Name",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: fw_7,
                            fontSize: 27,
                          ),
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartScreen()));
                        },
                        icon: Icon(Icons.add),
                        label: const Text('Add to Cart')),
                    Text(
                      "100,000 MMK",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: fw_7,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Divider(),
                SizedBox(height: 10),
                Text(
                  "Description",
                  style: TextStyle(
                      color: Colors.black, fontWeight: fw_6, fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  "The Ice Cream Making Machine is a versatile appliance designed to simplify the process of creating delicious ice cream at home or in commercial settings. With its user-friendly interface and advanced features, this machine allows users to customize their ice cream recipes to suit their taste preferences.",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: fw_6, fontSize: 15),
                ),
                Divider(),
                SizedBox(height: 10),
                Text(
                  "Useage",
                  style: TextStyle(
                      color: Colors.black, fontWeight: fw_6, fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  "To use the ice cream making machine, start by preparing your desired ice cream mixture with fresh ingredients like milk, cream, sugar, and flavorings. Freeze the mixing bowl of the machine in advance according to the manufacturer's instructions. Once the bowl is frozen, assemble the machine and pour in the mixture. Turn on the machine and let it churn the mixture until it reaches the desired consistency, usually about 20-30 minutes. Optionally, add mix-ins like chocolate chips or fruit towards the end of the churning process. Once done, scoop out the freshly churned ice cream and serve immediately for a delightful frozen treat!",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: fw_6, fontSize: 15),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

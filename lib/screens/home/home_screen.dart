import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:hope_app/screens/media/video_detail.dart';
import 'package:hope_app/screens/profile/profile_screen.dart';
import 'package:hope_app/screens/components/product_card.dart';
import 'package:hope_app/data.dart';
import 'dart:ui';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hBaseColorOne,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          "Explore",
          style: TextStyle(color: Colors.white, fontWeight: fw_7),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VideoDetailScreen()),
                );
              },
              child: Card(
                elevation: 4,
                margin: EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/movie_demo.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 230,
                      ),
                      Positioned.fill(
                        child: BackdropFilter(
                          //blur effect
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Container(
                            //Opacity
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              " Products 1 Usage Video",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 2,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Products",
              style: TextStyle(
                  fontSize: 27, color: Colors.white, fontWeight: fw_6),
            ),
            Divider(
              thickness: 2,
              color: hBaseColorThree,
            ),
            Expanded(
              child: _buildAllProducts(),
            )
          ],
        ),
      ),
    );
  }

  // products card positions & design
  _buildAllProducts() => GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 150),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12),
      scrollDirection: Axis.vertical,
      itemCount: Hproducts.NewProducts.length,
      itemBuilder: ((context, index) {
        final Products = Hproducts.NewProducts[index];
        return ProductCard(product: Products);
      }));
}

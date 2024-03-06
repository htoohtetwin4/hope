import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:hope_app/data.dart';
import 'package:hope_app/screens/components/product_card.dart';
import 'package:hope_app/screens/product/product_detail.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  int isSelectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hBaseColorOne,

      // appBar: AppBar(
      //   titleSpacing: 0,
      //   title: Padding(
      //     padding: EdgeInsets.only(left: 14.0),
      //     child: Text(
      //       "Products",
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontWeight: fw_6,
      //         fontSize: 30,
      //       ),
      //     ),
      //   ),
      //   backgroundColor: hBaseColorOne,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Text(
              "Products",
              style: TextStyle(
                  fontSize: 27, color: Colors.white, fontWeight: fw_6),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProductCategory(index: 0, name: "All Products"),
                _buildProductCategory(index: 1, name: "New"),
                _buildProductCategory(index: 2, name: "Used"),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: _buildAllProducts(),
            ),
          ],
        ),
      ),
    );
  }

  _buildProductCategory({required int index, required String name}) =>
      GestureDetector(
        onTap: () => setState(() => isSelectedCategory = index),
        child: Container(
          width: 100,
          height: 40,
          margin: const EdgeInsets.only(top: 10, right: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color:
                  isSelectedCategory == index ? hBaseColorThree : Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            name,
            style: TextStyle(
                color: isSelectedCategory == index
                    ? Colors.white
                    : hBaseColorThree,
                fontWeight: fw_6),
          ),
        ),
      );

// products card positions & design
  _buildAllProducts() => GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 150),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12),
      scrollDirection: Axis.vertical,
      itemCount: Hproducts.allProducts.length,
      itemBuilder: ((context, index) {
        final allProducts = Hproducts.allProducts[index];
        return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailScreen(product: allProducts))),
            child: ProductCard(product: allProducts));
      }));
}

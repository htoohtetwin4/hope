import 'package:flutter/material.dart';
import 'package:hope_app/constants.dart';
import 'package:hope_app/models/Products.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey.withOpacity(0.1)),
      child: Column(children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: Image.asset(
            widget.product.image,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          widget.product.name,
          style: TextStyle(fontSize: 16, fontWeight: fw_7, color: Colors.black),
        ),
        Text(
          '\$' '${widget.product.price}',
          style: TextStyle(fontSize: 20, fontWeight: fw_4, color: Colors.black),
        ),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: const Text('Add to Cart'))
      ]),
    );
  }
}

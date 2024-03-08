import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          CartItem(
            productName: 'Product 1',
            productCost: '100.00',
            productImage: 'assets/images/product1.jpg',
          ),
          CartItem(
            productName: 'Product 2',
            productCost: '150.00',
            productImage: 'assets/images/product2.jpg',
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Shop Now'),
          ),
        ),
      ),
    );
  }
}

class CartItem extends StatefulWidget {
  final String productName;
  final String productCost;
  final String productImage;

  const CartItem({
    Key? key,
    required this.productName,
    required this.productCost,
    required this.productImage,
  }) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool _showRemoveButton = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: GestureDetector(
          onHorizontalDragUpdate: (details) {
            setState(() {
              _showRemoveButton = details.delta.dx < -10;
            });
          },
          onHorizontalDragEnd: (_) {
            setState(() {
              _showRemoveButton = false;
            });
          },
          child: ListTile(
            leading: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Image.asset(widget.productImage),
            ),
            title: Text(widget.productName),
            subtitle: Text('\$${widget.productCost}'),
            trailing: _showRemoveButton
                ? IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {},
                  )
                : SizedBox(),
          ),
        ),
      ),
    );
  }
}

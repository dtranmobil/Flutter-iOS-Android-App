import 'package:flutter/material.dart';
import './product_control.dart';
import './products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductManager(this.products, this.addProduct, this.deleteProduct);

//  final Map<String, String> startingProduct;
//
//  ProductManager({this.startingProduct}) {
//    print('[ProductsMan] Constructor');
//  }
//
//  @override
//  State<StatefulWidget> createState() {
//    print('[ProductsMan] createState()');
//    return _ProductManagerState();
//  }
//}
//
//class _ProductManagerState extends State<ProductManager> {
//  final List<Map<String, String>> _products = []; //array type
//
//  @override
//  void initState() {
//    print('[ProductMan] initState()');
//    if (widget.startingProduct != null) {
//      _products.add(widget.startingProduct);
//    }
//    super.initState();
//  }
//
//  @override
//  void didUpdateWidget(ProductManager oldWidget) {
//    print('[ProductMan] didUpdateWidget()');
//    super.didUpdateWidget(oldWidget);
//  }

  @override
  Widget build(BuildContext context) {
    print('[ProductsMan] build');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(9.2), //float value of margin
          child: ProductControl(addProduct),
        ),
        Expanded(child: Products(products, deleteProduct: deleteProduct))
      ],
    );
  }
}

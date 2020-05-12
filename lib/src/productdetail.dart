import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final String tag;

  const ProductDetail({Key key, this.tag}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tag),
      ),
      body: Center(
        child: Hero(
          child: Image.network("https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp16touch-space-select-201911?wid=892&hei=820&&qlt=80&.v=1572825197207"),
          tag: widget.tag,
        ),
      ),
    );
  }
}
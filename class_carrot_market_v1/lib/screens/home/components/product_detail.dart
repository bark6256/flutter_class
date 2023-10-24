import 'package:class_carrot_market_v1/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(product.title,
                style: TextStyle(color: Colors.black87, fontSize: 16)),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text(product.address, style: TextStyle(fontSize: 12)),
                Text(' / '),
                Text(product.publishedAt, style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(product.price + '원',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildIcons(
                    CupertinoIcons.chat_bubble_2, product.commentsCount),
                SizedBox(width: 6),
                Visibility(
                    child:
                        _buildIcons(CupertinoIcons.heart, product.heartCount),
                    visible: product.heartCount > 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcons(IconData iconData, int count) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 20,
        ),
        SizedBox(width: 2),
        Text('$count'),
      ],
    );
  }
}

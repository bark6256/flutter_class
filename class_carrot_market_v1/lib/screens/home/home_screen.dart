import 'package:class_carrot_market_v1/models/product.dart';
import 'package:class_carrot_market_v1/screens/home/components/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('좌동'),
            SizedBox(width: 4.0),
            const Icon(CupertinoIcons.chevron_down)
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
      ),
      // ListView와 ListView.separated의 다른점
      // ListView.separated -> 화면에서 바로 보이는 만큼 랜더링을 한다. 즉, 리스트가 많더라도 메모리에 부담을 덜어줄 수 있다.
      body: ListView.separated(
        itemBuilder: (context, index) =>
            ProductItem(product: productList[index]),
        // 위젯 마다 구분선을 세팅 할 수 있다.
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 16,
          endIndent: 16,
          color: Colors.grey,
        ),
        itemCount: productList.length,
      ),
    );
  }
}

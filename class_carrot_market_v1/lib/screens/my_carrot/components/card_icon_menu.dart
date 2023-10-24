import 'package:class_carrot_market_v1/models/icon_menu.dart';
import 'package:flutter/material.dart';

class CardIconMenu extends StatelessWidget {
  // UI에 데이터 까지 포함해서 설계 하고 있다.
  final List<IconMenu> iconMenuList;

  const CardIconMenu({required this.iconMenuList, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Column(
        children: List.generate(
          iconMenuList.length,
          (index) => _buildIconMenuButton(iconMenuList[index]),
        ),
      ),
    );
  }

  Widget _buildIconMenuButton(IconMenu iconMenu) {
    return Container(
      height: 26,
      child: Row(
        children: [
          Icon(iconMenu.iconData, size: 17),
          SizedBox(width: 17),
          Text(iconMenu.title, style: TextTheme().titleMedium)
        ],
      ),
    );
  }
}

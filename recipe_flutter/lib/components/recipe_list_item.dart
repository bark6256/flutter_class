import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  // 이미지 경로
  final String imageName;
  final String title;

  // 타이틀
  const RecipeListItem(this.imageName, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/$imageName.jpeg",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 5,),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "aaaaaaaaaaaaaaaaaaaaaa",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

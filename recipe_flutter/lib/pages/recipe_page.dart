import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_flutter/components/recipe_list_item.dart';
import 'package:recipe_flutter/components/recipe_menu.dart';
import 'package:recipe_flutter/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("bugger", "Made Bugger"),
            RecipeListItem("pizza", "Made Pizza"),
          ],
        ),
      ),
    );
  }
}

// 함수 생성
AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1.0,
    actions: [
      Icon(CupertinoIcons.search, color: Colors.black,),
      SizedBox(width: 15,),
      Icon(CupertinoIcons.heart, color: Colors.red,),
      SizedBox(width: 15,),
    ],
  );
}
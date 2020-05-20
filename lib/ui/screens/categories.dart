import 'package:flutter/material.dart';
import 'package:shop/data/models/fake_categories_data.dart';
import 'package:shop/ui/resources/widgets/category_item.dart';

class CategorieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: <Widget>[
        ...DUMMY_CATEGORIES
            .map((category) => CategoryItem(
                  title: category.title,
                  color: category.color,
                ))
            .toList()
      ],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          childAspectRatio: 1.5,
          crossAxisSpacing: 30,
          mainAxisSpacing: 20),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/ui/screens/category_details.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem({Key key, this.title, this.color, this.id})
      : super(key: key);

  void goToDetailsCategory(BuildContext aContext) {
    Navigator.of(aContext).pushNamed(CategoryDetailsScreen.routename, arguments: 
      {
        'id': id,
        'title': title,
      } 
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.blue,
      onTap: () => goToDetailsCategory(context),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(0.7),
              color,
            ], begin: Alignment.bottomCenter, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

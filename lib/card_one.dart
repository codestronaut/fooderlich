import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class CardOne extends StatelessWidget {
  const CardOne({Key? key}) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String decription = 'Learn to make the perfect bread';
  final String chef = 'Freya J';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(
          width: 350.0,
          height: 450.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: const DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Text(
              category,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              top: 20.0,
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
            ),
            Positioned(
              bottom: 30.0,
              right: 0.0,
              child: Text(
                decription,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
            ),
            Positioned(
              bottom: 10.0,
              right: 0.0,
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

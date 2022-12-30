import 'package:flutter/material.dart';
import 'package:fooderlich/author_card.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class CardTwo extends StatelessWidget {
  const CardTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350.0,
          height: 450.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: const DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Freya J',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/user.png'),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16.0,
                    right: 16.0,
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 72.0,
                    left: 16.0,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

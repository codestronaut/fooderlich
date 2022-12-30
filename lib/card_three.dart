import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class CardThree extends StatelessWidget {
  const CardThree({Key? key}) : super(key: key);

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
            image: AssetImage('assets/mag3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 32.0,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(height: 24.0),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 12.0,
                    runSpacing: 12.0,
                    children: [
                      Chip(
                        label: Text(
                          'Healthy',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        deleteIconColor: Colors.white,
                        onDeleted: () {
                          log('delete');
                        },
                      ),
                      Chip(
                        label: Text(
                          'Vegan',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        deleteIconColor: Colors.white,
                        onDeleted: () {
                          log('delete');
                        },
                      ),
                      ...[
                        'Carrots',
                        'Greens',
                        'Wheat',
                        'Mint',
                        'Pescetarian',
                        'Lemongrass',
                      ]
                          .map(
                            (value) => Chip(
                              label: Text(
                                value,
                                style: FooderlichTheme.darkTextTheme.bodyText1,
                              ),
                              backgroundColor: Colors.black.withOpacity(0.7),
                            ),
                          )
                          .toList(),
                    ],
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

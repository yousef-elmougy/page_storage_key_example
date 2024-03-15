
import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  const PageViewPage({super.key});

  @override
  Widget build(BuildContext context) => PageView.builder(
        key: const PageStorageKey('pageview_page'),
        scrollDirection: Axis.vertical,
        itemCount: Colors.accents.length,
        itemBuilder: (context, index) => Container(
          color: Colors.accents[index],
          child: Center(
            child: Text(
              'Page $index',
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      );
}
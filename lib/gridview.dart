import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) => GridView.builder(
        key: const PageStorageKey('gridview_page'),
        itemCount: 100,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 10,
          childAspectRatio: 1 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => Center(
          child: Text(
            'Page $index',
            style: const TextStyle(fontSize: 24),
          ),
        ),
      );
}

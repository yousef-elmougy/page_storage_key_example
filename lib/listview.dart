import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
        key: const PageStorageKey('listview_page'),
        itemCount: 100,
        itemBuilder: (context, index) => ListTile(
          onTap: () {},
          title: Text('Item $index'),
        ),
      );
}

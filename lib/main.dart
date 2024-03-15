import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_storage_key/gridview.dart';
import 'package:page_storage_key/listview.dart';
import 'package:page_storage_key/new_screen.dart';
import 'package:page_storage_key/pageview.dart';

final bucket = PageStorageBucket();
final bucket2 = PageStorageBucket();
final bucket3 = PageStorageBucket();
final bucket4 = PageStorageBucket();

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        scrollBehavior: AppScrollBehavior(),
        debugShowCheckedModeBanner: false,
        home: const NewScreen(),
      );
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class TabPage2 extends StatefulWidget {
  const TabPage2({super.key});

  @override
  State<TabPage2> createState() => _TabPage2State();
}

class _TabPage2State extends State<TabPage2>
    with SingleTickerProviderStateMixin {
  // late TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 3, vsync: this);
  // }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('PageStorageKey Example'),
            bottom: const TabBar(
              // controller: _tabController,
              tabs: [
                Tab(text: 'ListView'),
                Tab(text: 'PageView'),
                Tab(text: 'GridView'),
              ],
            ),
          ),
          body: TabBarView(
            // controller: _tabController,
            children: [
              PageStorage(
                bucket: bucket,
                child: const ListViewPage(),
              ),
              // const ListViewPage(),
              PageStorage(
                bucket: bucket2,
                child: const PageViewPage(),
              ),
              // const PageViewPage(),
              PageStorage(
                bucket: bucket3,
                child: const GridViewPage(),
              ),
              // const GridViewPage(),
            ],
          ),
        ),
      );
}

enum HomeTabs {
  forYou,
  favorite,
  yourLists,
  savedLists,
  following;

  String get title => switch (this) {
        forYou => 'For You',
        favorite => 'Your Favorites',
        yourLists => 'Your Lists',
        savedLists => 'Saved Lists',
        following => 'Following',
      };
}

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage>
    with SingleTickerProviderStateMixin {
  // late TabController _tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 3, vsync: this);
  // }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
    //   title: const Text('PageStorageKey Example'),
    //   bottom: const TabBar(
    //     // controller: _tabController,
    //     tabs: [
    //       Tab(text: 'ListView'),
    //       Tab(text: 'PageView'),
    //       Tab(text: 'GridView'),
    //     ],
    //   ),
    ),
    body: PageStorage(
      bucket: bucket4,
      child: GridView.builder(
        key: const PageStorageKey('gridview_page_2'),
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
          ),
    )/* TabBarView(
      // controller: _tabController,
      children: [
        PageStorage(
          bucket: bucket,
          child: const ListViewPage(),
        ),
        // const ListViewPage(),
        PageStorage(
          bucket: bucket2,
          child: const PageViewPage(),
        ),
        // const PageViewPage(),
        PageStorage(
          bucket: bucket3,
          child: const GridViewPage(),
        ),
        // const GridViewPage(),
      ],
    ), */
  );
}

import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with TickerProviderStateMixin {
  // ignore: prefer_final_fields
  static List<Tab> _tabs = [
    const Tab(
      child: Text('Text Tab',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          )),
    ),
    const Tab(
      icon: Icon(Icons.exit_to_app),
      text: 'This is a icon',
    ),
    Tab(
      child: Column(
        children: const [
          CircleAvatar(
            backgroundColor: Colors.greenAccent,
            radius: 23,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80'),
          ),
        ],
      ),
    ),
    Tab(
      child: Image.network(
          'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80'),
    ),
    const Tab(
      child: Card(color: Colors.red, child: Text('card')),
    ),
    const Tab(
      child: ClipRRect(child: Text('ClipRRect')),
    ),
  ];

  // ignore: prefer_final_fields
  static List<Widget> _views = [
    const Center(child: Text('This is a first tab, text tab')),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Text('This is a second tab, icon tab')],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.image, size: 32),
        Text('This is a third tab, circle avatar tab')
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.image, size: 32),
        Text('This is fourth tab, image tab')
      ],
    ),
    const Center(child: Text('This is fifth tab, Card tab')),
    const Center(child: Text('This is sixth tab, ClipRRect tab')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      initialIndex: 0,
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('App Bars')),
          bottom: TabBar(
            tabs: _tabs,
            isScrollable: true,
          ),
          bottomOpacity: 0.8,
        ),
        body: TabBarView(
          children: _views,
        ),
      ),
    ));
  }
}

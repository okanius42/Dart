import 'package:flutter/material.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({Key? key}) : super(key: key);

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Center(
        child: Text(
      'Favorites Screen',
      style: TextStyle(color: Colors.blue, fontSize: 26),
    )),
    Center(
        child: Text('Music Screen',
            style: TextStyle(color: Colors.blue, fontSize: 26))),
    Center(
        child: Text('Upload Photo Screen',
            style: TextStyle(color: Colors.blue, fontSize: 26))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const CloseButton(color: Colors.red, onPressed: null),
          title: const Text('Bottom Navigation Bar '),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedItemColor: Colors.purple, // fixedColor: Colors.blue,
          selectedLabelStyle: const TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12,
          ),
          showUnselectedLabels: false,
          showSelectedLabels: true,
          unselectedIconTheme: const IconThemeData(opacity: .40),
          selectedIconTheme:
              const IconThemeData(opacity: 1, color: Colors.white),
          type: BottomNavigationBarType.fixed,
          useLegacyColorScheme: true,
          iconSize: 24,
          mouseCursor: MouseCursor.uncontrolled,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note), label: 'Music'),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo),
              label: 'Add a Photo',
            )
          ],
        ),
        body: Column(
          children: [
            Text('$_selectedIndex'),
            _widgetOptions.elementAt(_selectedIndex),
          ],
        ));
  }
}

//   body: _widgetOptions.elementAt(_selectedIndex),

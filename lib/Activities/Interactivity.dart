import 'package:flutter/material.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interactivity',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Interactivity'),
        ),
        body: const FavoriteWidgetS(),
      ),
    );
  }
}

class FavoriteWidgetS extends StatefulWidget {
  const FavoriteWidgetS({Key? key}) : super(key: key);

  @override
  State<FavoriteWidgetS> createState() => _FavoriteWidgetSState();
}

class _FavoriteWidgetSState extends State<FavoriteWidgetS> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(0),
              child: IconButton(
                padding: const EdgeInsets.all(0),
                alignment: Alignment.centerRight,
                iconSize: 75,
                icon: (_isFavorited
                    ? const Icon(Icons.star)
                    : const Icon(Icons.star_border)),
                color: Colors.red[500],
                onPressed: _toggleFavorite,
              ),
            ),
            SizedBox(
              width: 18,
              child: SizedBox(
                child: Text('$_favoriteCount'),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 18,
          child: SizedBox(
            child: Text('This is a Icon'),
          ),
        )
      ],
    );
  }
}

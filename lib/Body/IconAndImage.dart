import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageAndIcon extends StatefulWidget {
  const ImageAndIcon({Key? key}) : super(key: key);

  @override
  State<ImageAndIcon> createState() => _ImageAndIconState();
}

class _ImageAndIconState extends State<ImageAndIcon> {
  @override
  void initState() {
    super.initState();
    loadAsset();
  }

  void loadAsset() async {
    Uint8List data =
        (await rootBundle.load('assets/images/adsiz.jpg')).buffer.asUint8List();
    setState(() => imageData = data);
  }

  late Uint8List imageData;

  @override
  Widget build(BuildContext context) {
    double widthAll = MediaQuery.of(context).size.width;
    double widthAllImage = widthAll * 0.125;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Icon and Image'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [Text('Icon 1:'), Icon(Icons.add_a_photo)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('NetworkImage:'),
              Image(
                width: (MediaQuery.of(context).size.width) * 0.11,
                image: const NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              /* Image.network(
                  width: (MediaQuery.of(context).size.width) * 0.12,
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                  */
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Assets Image:'),
              Image.asset(
                'assets/images/adsiz.jpg',
                width: 100,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Memory Image:'),
              Image.memory(
                imageData,
                width: 100,
                height: 50,
                scale: 0.5,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('File Image:'),
              Container(
                alignment: Alignment.center,
                width: 100,
                height: 50,
                color: Colors.black,
                child: const Text(
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                    'Need to learn permission handler'),
              )
            ],
          ),
        ],
      ),
    );
  }
}

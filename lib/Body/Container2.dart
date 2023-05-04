import 'package:flutter/material.dart';

class ContWork2 extends StatelessWidget {
  const ContWork2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightA = MediaQuery.of(context).size.height;
    double heiApp = MediaQuery.of(context).padding.top + kToolbarHeight;
    double heightBody = heightA - heiApp;

    double widthA = MediaQuery.of(context).size.width;

    TextStyle style1 = const TextStyle(color: Colors.black, fontSize: 21);
    TextStyle follow = const TextStyle(color: Colors.black, fontSize: 14);
    TextStyle followN = const TextStyle(color: Colors.black, fontSize: 12);
    TextStyle bio = const TextStyle(
        color: Colors.black, fontSize: 14, fontStyle: FontStyle.italic);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.4),
                shape: BoxShape.rectangle,
                border: Border.all(
                    color: Colors.black.withOpacity(0.2),
                    width: 3,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12)),
            width: widthA,
            margin: EdgeInsets.all(heightBody * 0.01),
            height: heightBody * 0.14,
            child: Row(children: [
              const SizedBox(
                width: 12,
              ),
              const CircleAvatar(
                  foregroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80')),
              const SizedBox(
                width: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Okanius',
                        style: style1,
                      ),
                      const SizedBox(
                        width: 44,
                      ),
                      Column(
                        children: [
                          Text(
                            'Following',
                            style: follow,
                          ),
                          Text(
                            '15',
                            style: followN,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 44,
                      ),
                      Column(
                        children: [
                          Text(
                            'Follower',
                            style: follow,
                          ),
                          Text(
                            '15',
                            style: followN,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    'About yourself About yourself About yourself',
                    style: bio,
                  ),
                ],
              ),
            ]),
          ),
          Container(
            width: widthA,
            height: heightBody * 0.48,
            margin: EdgeInsets.symmetric(horizontal: (heightBody * 0.01)),
            decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.7),
                shape: BoxShape.rectangle,
                border: Border.all(
                    color: Colors.black.withOpacity(0.2),
                    width: 3,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.only(
                top: heightBody * 0.003,
                left: widthA * 0.02,
                right: widthA * 0.6,
                bottom: heightBody * 0.35),
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                      color: Colors.black, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}

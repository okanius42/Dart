import 'package:flutter/material.dart';
import 'Activities/TapBox.dart';

import 'Activities/Activities.dart';
import 'Activities/Interactivity.dart';
import 'Animation/AnimatedAlign.dart';
import 'Animation/AnimatedBuilder.dart';
import 'Animation/AnimatedPadding.dart';
import 'Animation/Animation.dart';
import 'Animation/AnimationMain.dart';
import 'AppBar/AppBar.dart';
import 'AppBar/BottomNavigationBar.dart';
import 'AppBar/TabBar.dart';
import 'Body/Body.dart';
import 'Body/Column-Row.dart';
import 'Body/Container.dart';
import 'Body/Container2.dart';
import 'Body/Expanded.dart';
import 'Body/IconAndImage.dart';
import 'Inputs/AutoComplete.dart';
import 'Inputs/BasicInput.dart';
import 'Inputs/InputMain.dart';
import 'Inputs/pickImageFromGallery.dart';
import 'main.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const Home());
      case '/appBarMain':
        return MaterialPageRoute(builder: (context) => const AppBarMain());
      case '/botBar':
        return MaterialPageRoute(builder: (context) => const BotNavBar());
      case '/tabBar':
        return MaterialPageRoute(builder: (context) => const TabBarWidget());
      case '/body':
        return MaterialPageRoute(builder: (context) => const BodyWorking());
      case '/container':
        return MaterialPageRoute(builder: (context) => const ContWork());
      case '/container2':
        return MaterialPageRoute(builder: (context) => const ContWork2());
      case '/column':
        return MaterialPageRoute(builder: (context) => const ColumnWork());
      case '/inanimate':
        return MaterialPageRoute(builder: (context) => const ImageAndIcon());
      case '/expanded':
        return MaterialPageRoute(builder: (context) => const ExpandedWork());
      case '/autoCompleted':
        return MaterialPageRoute(
            builder: (context) => const AutoCompleteClass());
      case '/basicInput':
        return MaterialPageRoute(builder: (context) => const BasicInput());
      case '/imageFromGallery':
        return MaterialPageRoute(
            builder: (context) => const ImageFromGallery());
      case '/animationPadding':
        return MaterialPageRoute(
            builder: (context) => const AnimationPaddingClass());
      case '/animation':
        return MaterialPageRoute(builder: (context) => const Ani1());
      case '/animatedAlign':
        return MaterialPageRoute(
            builder: (context) => const AnimatedAlignClass());
      case '/animatedBuilderClass':
        return MaterialPageRoute(
            builder: (context) => const AnimatedBuilderClass());
      case '/animationMain':
        return MaterialPageRoute(builder: (context) => const AnimationMain());
      case '/activities':
        return MaterialPageRoute(builder: (context) => const ActivitiesClass());
      case '/favoriteWidget':
        return MaterialPageRoute(builder: (context) => const FavoriteWidget());
      case '/inputs':
        return MaterialPageRoute(builder: (context) => const InputMain());
      case '/tapBox':
        return MaterialPageRoute(builder: (context) => const TapBoxClass());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: Text("There isn't a page here"),
            ),
          ),
        );
    }
  }
}

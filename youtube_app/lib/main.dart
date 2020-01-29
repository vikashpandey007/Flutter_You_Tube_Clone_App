import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:youtube_app/Homepage.dart';
import 'package:youtube_app/Inbox.dart';
import 'package:youtube_app/Library.dart';
import 'package:youtube_app/Subcription.dart';
import 'package:youtube_app/Trending.dart';

main() {
  runApp(DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => new ThemeData(
            primaryColor: Colors.white,
            brightness: brightness,
          ),
      themedWidgetBuilder: (context, theme) {
        return new MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: new Myapp(),
        );
      }));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int currentIndex = 0;
  var barcount = [Homepage(), Trending(), Subcription(), Inbox(), Libary()];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: barcount[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.whatshot,
            ),
            title: Text(
              'Treading',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions,
            ),
            title: Text(
              'Subscriptions',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
            ),
            title: Text(
              "Inbox",
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library,
            ),
            title: Text(
              'Library',
            ),
          ),
        ],
      ),
    );
  }
}

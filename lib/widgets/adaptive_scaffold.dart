import 'dart:io';

import 'package:dicee/ui/dice_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        home: CupertinoPageScaffold(
          child: DicePage(),
          navigationBar: CupertinoNavigationBar(
            backgroundColor: Colors.redAccent,
            heroTag: Text(
              "Dicee",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      );
    } else {
      return MaterialApp(
        home: Scaffold(
          body: DicePage(),
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(
              "Dicee",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      );
    }
  }
}

// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// TODO: Check if we need to import anything
import 'package:task_03_category_route/category.dart';

// TODO: Define any constants

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute({this.name});

  final name;
  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  static final green = Colors.green[100];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.
    var options = new List<Widget>();

    for (var i = 0; i < _baseColors.length; i++) {
  options.add(Category(name: _categoryNames[i], color: _baseColors[i], iconLocation: Icons.cake,));

      //      //add each item into an index of the list
//      options.add(
//          InkWell(
//        onTap: () {
//          print(_categoryNames[i] + ' was clicked!');
//        },
//        highlightColor: Colors.amber, //_baseColors[i],
//        splashColor: Colors.amber, //_baseColors[i],
////        borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
//        child: Padding(
//          padding: EdgeInsets.all(8.0),
//          child: Row(
//            children: <Widget>[
//              Padding(
//                  padding: EdgeInsets.all(8.0),
//                  child: Icon(
//                    Icons.cake,
//                    size: 60.0,
//                  )),
//              Center(
//                child: Text(_categoryNames[i]),
//              )
//            ],
//          ),
//        ),
//      ));
    }

    // TODO: Create a list view of the Categories
    final listView = Container(
      color: green,
      child: ListView(
        children: options,
      ),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      title: Text(
        name,
        style: TextStyle(color: Colors.black, fontSize: 30.0),
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: green,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}

// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart
  const Category({Key key, this.name, this.icon, this.color});

  final name, icon, color;

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Container(
        height: 100.0,
        child: InkWell(
          onTap: () {
            print("I was tapped");
            void _navigator
          },
          borderRadius: BorderRadius.all(Radius.elliptical(50.0, 50.0)),
          splashColor: color,
          highlightColor: color,
          child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      icon,
                      size: 60.0,
                    ),
                  ),
                  Center(
                    child: Text(
                      name,
                      style: TextStyle(fontSize: 24.0),
                    ),
                  )
                ],
              )),
        ));
  }
}

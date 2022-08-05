import 'package:flutter/material.dart';
import 'package:learn_shapes/pages/shapes/arc_screen.dart';
import 'package:learn_shapes/pages/shapes/circle_screen.dart';
import 'package:learn_shapes/pages/shapes/custom_screen.dart';
import 'package:learn_shapes/pages/shapes/line_screen.dart';
import 'package:learn_shapes/pages/shapes/rectangle_screen.dart';
import 'package:learn_shapes/pages/shapes/rounded_rectangle_screen.dart';
import 'package:learn_shapes/pages/shapes/square_screen.dart';
import 'package:learn_shapes/pages/shapes/triangle_screen.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List shapes = [
    'Line',
    'Square',
    'Rectangle',
    'Rounded Rectangle',
    'Triangle',
    'Circle',
    'Arc',
    'Custom',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            onTap: (index) => setState(() => currentIndex = index),
            tabs: shapes
                .map(
                  (shape) => Tab(
                    text: shape,
                  ),
                )
                .toList(),
          ),
        ),
        body: IndexedStack(
          index: currentIndex,
          children: const [
            LinePaint(),
            SquarePaint(),
            RectanglePaint(),
            RoundedRectanglePaint(),
            TrianglePaint(),
            CirclePaint(),
            ArcPaint(),
            CustomShapePaint(),
          ],
        ),
      ),
    );
  }
}

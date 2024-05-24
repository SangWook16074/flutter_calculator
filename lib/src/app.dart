import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/src/widgets/input_key_button.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _keys = [
    [
      "AC",
      CupertinoIcons.percent,
      CupertinoIcons.divide,
      CupertinoIcons.delete_left_fill,
    ],
    ["7", "8", "9", CupertinoIcons.multiply],
    ["4", "5", "6", CupertinoIcons.minus],
    ["1", "2", "3", CupertinoIcons.plus],
    [CupertinoIcons.plus_slash_minus, "0", ".", CupertinoIcons.equal]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          _resultView(),
          _keyView(),
        ],
      ),
    ));
  }

  Widget _resultView() => Expanded(
        child: Container(
          alignment: Alignment.bottomRight,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "0",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                  fontWeight: FontWeight.w200),
            ),
          ),
        ),
      );

  Widget _keyView() => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: List.generate(
            _keys.length,
            (y) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  _keys[y].length,
                  (x) => Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InputKeyButton(
                      child: _keys[y][x],
                    ),
                  )),
                )),
          ),
        ),
      );
}

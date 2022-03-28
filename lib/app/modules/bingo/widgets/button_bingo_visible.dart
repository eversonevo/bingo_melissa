import 'package:flutter/material.dart';

class ButtonBingoVisible extends StatelessWidget {
  ButtonBingoVisible({required int index, Key? key})
      : _index = index,
        super(key: key);

  int _index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Visibility(
          visible: true,
          child: Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              color: Colors.blue,
              child: Center(child: Text(_index.toString())),
            ),
          ),
        ),
      ],
    );
  }
}

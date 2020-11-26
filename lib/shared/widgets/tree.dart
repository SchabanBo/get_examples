import 'package:flutter/material.dart';

class Tree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [home(), gen0(), gen1(), gen2()],
      ),
    );
  }

  Widget home() => Row(children: [getPerson('Home', flex: 7)]);

  Widget gen0() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 4,
            child: Card(
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              getPerson('Judy'),
              getPerson('Jack'),
            ])),
          ),
          Flexible(
            flex: 3,
            child: Card(
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              getPerson('Sandra'),
              getPerson('Leonardo'),
            ])),
          ),
        ],
      );

  Widget gen1() => Row(
        children: [
          getPerson('Monica', flex: 2),
          getPerson('Ross', flex: 2),
          getPerson('Rachel'),
          getPerson('Amy'),
          getPerson('Jill'),
        ],
      );

  Widget gen2() => Row(
        children: [
          getPerson('Jack'),
          getPerson('Erica'),
          getPerson('Bin'),
          getPerson('Emma', flex: 2),
          Spacer(flex: 2)
        ],
      );

  Widget getPerson(String name, {int flex = 1}) => Expanded(
        flex: flex,
        child: Container(
          height: 100,
          child: Card(
            elevation: 5,
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text(
                  name,
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      );
}

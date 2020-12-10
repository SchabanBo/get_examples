import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialigSnakbarsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialig & Snakbars'),
      ),
      body: Column(
        children: [
          FlatButton(
            child: Text('Simple Snakbar'),
            onPressed: () => Get.snackbar('Hi', 'i am a modern snackbar'),
          ),
          FlatButton(
            child: Text('Custom Snakbar'),
            onPressed: () => Get.snackbar(
              "Hey i'm a Get SnackBar!", // title
              "It's unbelievable! I'm using SnackBar without context, without boilerplate, without Scaffold, it is something truly amazing!", // message
              icon: Icon(Icons.alarm),
              shouldIconPulse: true,
              barBlur: 20,
              isDismissible: true,
              duration: Duration(seconds: 3),
            ),
          ),
          FlatButton(
            child: Text('DefaultDialog'),
            onPressed: () => Get.defaultDialog(
                onConfirm: Get.back,
                middleText: "Dialog made in 3 lines of code"),
          ),
          FlatButton(
            child: Text('Bottom Sheets'),
            onPressed: () => Get.bottomSheet(Container(
              child: Material(
                child: Wrap(
                  children: <Widget>[
                    ListTile(
                        leading: Icon(Icons.music_note),
                        title: Text('Music'),
                        onTap: () => {}),
                    ListTile(
                      leading: Icon(Icons.videocam),
                      title: Text('Video'),
                      onTap: () => {},
                    ),
                  ],
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}

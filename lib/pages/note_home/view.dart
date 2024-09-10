import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notepad/pages/edit/view.dart';

import 'logic.dart';

class NoteHomePage extends StatelessWidget {
  static String get route => "/NoteHomePage";

  NoteHomePage({Key? key}) : super(key: key);

  final logic = Get.put(NoteHomeLogic());
  final state = Get.find<NoteHomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("NotePad"),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                onPressed: () {
                  logic.increment();
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
                onPressed: () {
                  Get.to(EditPage());
                },
                child: Text(
                  "go",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
        body: Container(
          child: Center(child: Obx(() {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    TyButton(),
                    TyButton(),
                    TyButton(),
                  ],
                ),
              ],
            );
          })),
        ));
  }
}

class TyButton extends StatelessWidget {
  const TyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("0111");
      },
      borderRadius: BorderRadius.circular(20),
      splashColor: Colors.red,
      hoverColor: Colors.red,
      child: Container(
          height: 100,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            "0",
            style: TextStyle(fontSize: 30),
          ))),
    );
  }
}

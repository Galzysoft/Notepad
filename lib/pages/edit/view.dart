import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notepad/pages/note_home/logic.dart';

import 'logic.dart';

class EditPage extends StatelessWidget {
  EditPage({Key? key}) : super(key: key);
  final logicNoteHome = Get.put(NoteHomeLogic());
  final logic = Get.put(EditLogic());
  final state = Get
      .find<EditLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () {
                logicNoteHome.increment();
              },
              child: Text(
                "+",
                style: TextStyle(fontSize: 20),
              )),

        ],
      ),
      body: Obx(() {
      return Center(child: Text("${logicNoteHome.a.value}"));
    }),);
  }
}

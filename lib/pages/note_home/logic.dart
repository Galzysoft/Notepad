import 'package:get/get.dart';

import 'state.dart';

class NoteHomeLogic extends GetxController {
  final NoteHomeState state = NoteHomeState();
  var a=0.obs;
  void increment(){
    a.value++;
    print(a.value);
  }
}

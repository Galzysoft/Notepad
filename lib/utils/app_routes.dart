import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:notepad/pages/note_home/view.dart';
import 'package:notepad/pages/splash/view.dart';

List<GetPage<dynamic>>? getPages=[
  GetPage(name: SplashPage.route, page: () => SplashPage(),),
  GetPage(name: NoteHomePage.route, page: () => NoteHomePage(),),

];
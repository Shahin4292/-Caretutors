import 'package:caretutors/pages/HomePage/home_screen.dart';
import 'package:caretutors/pages/Notes/note.dart';
import 'package:caretutors/routes/routes_name.dart';
import 'package:get/get.dart';

class RoutePages {
  static List<GetPage<dynamic>> routes = [
    GetPage(name: RoutesName.splash, page: () => const HomeScreen()),
    GetPage(name: RoutesName.homeScreen, page: () => const HomeScreen()),
    GetPage(name: RoutesName.noteScreen, page: () => const NoteScreen()),
  ];
}

import 'package:get/get.dart';
import 'package:webandappboth/routes/routes_name.dart';
import 'package:webandappboth/views/screens/parties/parties_page.dart';

class RoutesPage {
 static List<GetPage> pages = [
    GetPage(name: RoutesName.partiespage, page: () => const PartiesPage()),
  ];
}

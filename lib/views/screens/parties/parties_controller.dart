import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PartyController extends GetxController{

  TextEditingController searchController = TextEditingController();
}


// SingleChildScrollView(
// physics: const BouncingScrollPhysics(),
// child: Padding(
// padding: SizeConfig().getPadding(all: 16),
// child: Column(
// mainAxisSize: MainAxisSize.min,
// children: [
// //parties page Container:sq
// const PartiesPageContainer(),
//
// // parties title and add party button and textformfield:
// const PartiesPageTopHeader(),
//
// Padding(
// padding: SizeConfig().getPadding(top: 15),
// child: const PartiesPageTable(),
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// FloatingActionButton(
// onPressed: () {},
// child: Image.asset(AppAsset.chat),
// ),
// // FloatingActionChatButtonWidget(),
// ],
// ),
// ],
// ),
// ),
// ),
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:webandappboth/main.dart';
import '../../../../../../../responsive/sizeconfig.dart';
import '../../../../widgets/customtextformfield_widget.dart';
import '../parties_controller.dart';

class PartiesPageTextformfield extends StatelessWidget {
  const PartiesPageTextformfield({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    PartyController partyController = Get.put(PartyController());

    return Expanded(
      child: CustomTextFormField(

        hintText: "Search",
        controller: partyController.searchController,
        onChanged: (val) {
          print("=================${partyController.searchController}=================");
        },
      ),
    );
  }
}

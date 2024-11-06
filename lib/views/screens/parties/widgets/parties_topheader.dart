import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:webandappboth/views/screens/parties/widgets/parties_textformfield.dart';

import '../../../../../../../utills/static_decoration.dart';
import '../../../../responsive/responsive.dart';
import '../../../../responsive/sizeconfig.dart';
import '../../../../widgets/button/addbuttontext_widget.dart';
import '../../../../widgets/text/commontext_widget.dart';
import '../parties_controller.dart';

class PartiesPageTopHeader extends StatelessWidget {
  const PartiesPageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    PartyController partyController = Get.put(PartyController());

    return (ResponsiveLayoutClass.isMobile(context))
        ? Row(
            children: [
              // all parties:
              const CommonDarkGreyTextTitleWidget(
                text: "All Parties",
              ),
              width10,
              // textformfield:
              const PartiesPageTextformfield()
            ],
          )
        : Row(
            children: [
              // text:
              const CommonDarkGreyTextTitleWidget(
                text: "All Parties",
              ),
              const Spacer(),
              // add button:
              Padding(
                padding: SizeConfig().getPadding(all: 8),
                child: AddbuttonwithtextWidget(
                  text: "New Party",
                  onTap: () {},
                ),
              ),
              // textformfield:
              const PartiesPageTextformfield(),
              // Expanded(
              //   child: CustomTextFormField(
              //     hintText: "Search",
              //     // borderRadius: 12,
              //     controller: partyController.searchController,
              //     onChanged: (val) {
              //       print(
              //           "=================${partyController.searchController}=================");
              //     },
              //   ),
              // ),
            ],
          );
  }
}

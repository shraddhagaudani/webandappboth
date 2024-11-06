import 'package:flutter/material.dart';

import '../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../utills/static_decoration.dart';
import '../../../../utills/appcolors.dart';
import '../../../../widgets/customcontainer_widget.dart';
import '../../../../widgets/text/commontext_widget.dart';

class PartiesPageTable extends StatelessWidget {
  const PartiesPageTable({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CustomContainerWidget(
      padding: SizeConfig().getPadding(all: 8),
      // height: 400.h,
      // width: 400.w,
      color: AppColors.white,
      borderRadius: circular10BorderRadius,
      child: Padding(
        padding: SizeConfig().getPadding(all: 8),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonBlackTextTitleWidget(text: "Date"),
                CommonBlackTextTitleWidget(text: "Invoice#"),
                CommonBlackTextTitleWidget(text: "CustomerId"),
              ],
            ),
            const Divider(),
            Padding(
              padding: SizeConfig().getPadding(
                top: 5,
              ),
              child: const Row(
                children: [
                  CommonBlackTextWidget(
                    text: "6/11/2024",
                  ),
                ],
              ),
            ),
            // Spacer(),
            const Center(
              child: CommonBlueTextWidget(
                text: "View All Transactions",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

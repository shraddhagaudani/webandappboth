import 'package:flutter/material.dart';
import 'package:webandappboth/widgets/text/commontext_widget.dart';

import '../../responsive/responsive.dart';
import '../../responsive/sizeconfig.dart';
import '../../utills/appasset.dart';
import '../../utills/appcolors.dart';
import '../../utills/static_decoration.dart';


class RefernowButtonwidget extends StatelessWidget {
  // final String text;
  final Color? backgroundColor;
  final void Function()? onTap;

  const RefernowButtonwidget({
    super.key,
    // required this.text,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.black12,
      onTap: onTap,
      child: Container(
        height: (ResponsiveLayoutClass.isDesktop(context)) ? 35 : 40,
        // width: (ResponsiveLayoutClass.isDesktop(context))
        //     ? SizeConfig().getSize(180)
        //     : 100,
        // width: ,
        padding: SizeConfig().getPadding(all: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: circular8BorderRadius,
          border: Border.all(
            color: AppColors.lightgreycolor,
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              AppAsset.gift,
            ),
            width05,
            // CustomDrawerTitleDarkGreyTextWidget(
            //   fontSize: SizeConfig().getSize(15),
            //   text: "Refer Now",
            // ),
            CommonDarkGreyTextTitleWidget(text: "Refer Now",              fontSize: SizeConfig().getSize(15),
            ),
          ],
        ),
      ),
    );
  }
}

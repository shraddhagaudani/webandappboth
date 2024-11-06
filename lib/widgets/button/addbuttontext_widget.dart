
import 'package:flutter/material.dart';

import '../../responsive/sizeconfig.dart';

import '../../utills/appasset.dart';
import '../../utills/appcolors.dart';
import '../../utills/static_decoration.dart';
import '../customtext_widget.dart';

class AddbuttonwithtextWidget extends StatelessWidget {
  final void Function()? onTap;
  final String text;

  const AddbuttonwithtextWidget({
    super.key,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.black12,
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: circular8BorderRadius,
          color: AppColors.bluecolor,
        ),
        // height: 60,
        // width: 50,
        padding: SizeConfig().getPadding(
          all: 8,
        ),
        child: Row(
          children: [
            Padding(
              padding: SizeConfig().getPadding(all: 8),
              child: Image.asset(
                AppAsset.addsmall,
              ),
            ),
            Padding(
              padding: SizeConfig().getPadding(all: 8),
              child: CustomTextWidget(
                text: text,
                fontSize: 12,
                color: AppColors.white,
                fontWeight: fontWeight400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

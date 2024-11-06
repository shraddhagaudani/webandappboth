import 'package:flutter/material.dart';

import '../../../../responsive/responsive.dart';
import '../../../../responsive/sizeconfig.dart';
import '../../../../utills/appcolors.dart';
import '../../../../utills/static_decoration.dart';
import '../../../../widgets/container/containerformobile.dart';
import '../../../../widgets/container/containerforweb.dart';
import '../../../../widgets/customtext_widget.dart';

class PartiesPageContainer extends StatelessWidget {
  const PartiesPageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return (ResponsiveLayoutClass.isMobile(context))
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlueContainerWidget(
                padding: padding16,
                width: double.infinity,
                // height: 100.h,
                // width: 400.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      text: "27",
                      color: AppColors.white,
                      fontWeight: fontWeightbold,
                      fontSize: 20,
                    ),
                    // height05,
                    CustomTextWidget(
                      text: "All Parties",
                      color: AppColors.white,
                      fontSize: 13,
                      fontWeight: fontWeightbold,
                    ),
                  ],
                ),
              ),
              height10,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //Green container:
                    Padding(
                      padding: SizeConfig().getPadding(
                        all: 8,
                      ),
                      child: const GreenContainerWidget(
                        percentage: "32%",
                        text1: '₹8,41,490.92',
                        text2: 'Collected',
                      ),
                    ),
                    //Red Container:
                    Padding(
                      padding: SizeConfig().getPadding(
                        all: 8,
                      ),
                      child: const RedContainerWidget(
                        percentage: "32%",
                        text1: '₹8,41,490.92',
                        text2: 'Pay',
                      ),
                    ),
                  ],
                ),
              ),
              height15,
            ],
          )
        //for web
        : const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Blue Container:
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ContainerBlueforweb(
                    percentage: "27",
                    title: "All Parties",
                  ),
                ),
                //Green Container:
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ContainerGreenforweb(
                    percentage: "₹ 50,41,490.92",
                    title: "Collect",
                  ),
                ),
                //Red Container:
                Padding(
                  padding: EdgeInsets.all(
                    8.0,
                  ),
                  child: ContainerRedforweb(
                    percentage: "₹ 4,41,490.92",
                    title: "Pay",
                  ),
                ),
              ],
            ),
          );
  }
}

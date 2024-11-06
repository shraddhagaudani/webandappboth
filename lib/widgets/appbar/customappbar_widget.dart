import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../responsive/responsive.dart';
import '../../responsive/sizeconfig.dart';
import '../../utills/appasset.dart';
import '../../utills/appcolors.dart';
import '../button/addbutton_widget.dart';
import '../button/refernowbutton_widget.dart';

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  const CustomAppBarWidget({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.centerTitle,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.flexibleSpace,
  });

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool? centerTitle;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final Widget? flexibleSpace;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return (ResponsiveLayoutClass.isMobile(context))
        // is mobile
        ? AppBar(
            flexibleSpace: flexibleSpace,
            title: title,
            leading: leading ??
                Builder(
                  builder: (BuildContext context) {
                    return InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Image.asset(
                          AppAsset.menublue,
                          fit: BoxFit.cover,
                          width: 15,
                          height: 15,
                        ),
                      ),
                    );
                    // return IconButton(
                    //   icon: const Icon(
                    //     Icons.list_rounded,
                    //     color: AppColors
                    //         .bluecolor, // Change Custom Drawer Icon Color
                    //   ),
                    //   onPressed: () {
                    //     Scaffold.of(context).openDrawer();
                    //   },
                    //   tooltip: MaterialLocalizations.of(context)
                    //       .openAppDrawerTooltip,
                    // );
                  },
                ),
            actions: [
              InkWell(
                onTap: () {},
                child: Padding(
                    padding: const EdgeInsets.all(
                      16.0,
                    ),
                    child: Image.asset(
                      AppAsset.notification,
                      color: AppColors.bluecolor,
                    )),
              ),
            ],
            centerTitle: true,
            backgroundColor: AppColors.backgroundcolor,
            foregroundColor: foregroundColor,
            elevation: 10,
          )
        // in web
        : AppBar(
            flexibleSpace: flexibleSpace,
            title: title,
            leading: leading ??
                Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(
                        Icons.list_rounded,
                        color: AppColors.bluecolor, // Change Custom Drawer Icon Color
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    );
                  },
                ),
            actions: [
              Padding(
                padding: SizeConfig().getPadding(
                  all: 8,
                ),
                child: const AddbuttonWidget(),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  all: 8,
                ),
                child: Image.asset(
                  height: SizeConfig().getSize(23),
                  fit: BoxFit.cover,
                  AppAsset.notification,
                ),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  all: 8,
                ),
                child: Image.asset(
                  height: SizeConfig().getSize(22),
                  fit: BoxFit.cover,
                  AppAsset.setting,
                ),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  left: 8,
                  right: 16,
                ),
                child: const RefernowButtonwidget(),
              ),
            ],
            // centerTitle: true,
            backgroundColor: AppColors.backgroundcolor,
            foregroundColor: foregroundColor,
            elevation: 10,
          );
  }
}

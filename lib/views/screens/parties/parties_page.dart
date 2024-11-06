import 'package:flutter/material.dart';
import 'package:webandappboth/utills/appasset.dart';
import 'package:webandappboth/views/screens/parties/widgets/parties_container.dart';
import 'package:webandappboth/views/screens/parties/widgets/parties_table.dart';
import 'package:webandappboth/views/screens/parties/widgets/parties_topheader.dart';
import 'package:webandappboth/widgets/appbar/customappbar_widget.dart';
import 'package:webandappboth/widgets/appbar/customappbartext_widget.dart';
import '../../../responsive/sizeconfig.dart';

class PartiesPage extends StatelessWidget {
  const PartiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Parties Page",
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: SizeConfig().getPadding(all: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //parties page Container:sq
              const PartiesPageContainer(),

              // parties title and add party button and textformfield:
              const PartiesPageTopHeader(),

              Padding(
                padding: SizeConfig().getPadding(top: 15),
                child: const PartiesPageTable(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: Image.asset(AppAsset.chat),
                  ),
                  // FloatingActionChatButtonWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

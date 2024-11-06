import 'package:flutter/material.dart';
import 'package:webandappboth/utills/appasset.dart';
import 'package:webandappboth/utills/appcolors.dart';
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
      backgroundColor: AppColors.backgroundcolor,
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Parties Page",
        ),
      ),
      // body:
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.17,
                // padding: EdgeInsets.symmetric(horizontal: 50,),
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "\$ 4363 er8",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 130,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      height: 30,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    // border: Border.all(
                    //   color: Colors.grey,
                    // ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  // dataRowColor: MaterialStateProperty.all(
                  //   Colors.white,
                  // ),
                  columns: const [
                    DataColumn(
                      label: Text("Date"),
                    ),
                    DataColumn(
                      label: Text("Invoice"),
                    ),
                    DataColumn(
                      label: Text("Customer Loan"),
                    ),
                    DataColumn(
                      label: Text("Company"),
                    ),
                    DataColumn(
                      label: Text("Job"),
                    ),
                  ],
                  rows: List.generate(
                    5,
                    (index) => const DataRow(
                      cells: [
                        DataCell(
                          Text("hcgffhdh"),
                        ),
                        DataCell(
                          Text("dfd"),
                        ),
                        DataCell(
                          Text("gttgg"),
                        ),
                        DataCell(
                          Text("ddfg"),
                        ),
                        DataCell(
                          Text("iki"),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

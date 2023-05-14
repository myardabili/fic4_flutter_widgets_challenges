import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_form/fic_dialog_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_form/fic_form_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_aspectratio_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_center_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_column_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_expanded_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_gridview_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_listview_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_padding_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_row_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_sizedbox_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_stack_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_wrap_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_widget/fic_button_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_widget/fic_circle_avatar.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_widget/fic_container_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_widget/fic_icon_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_widget/fic_image_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_widget/fic_scaffold_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_widget/fic_text_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_navigation/fic_bottom_navbar.dart';
import 'package:project_flutter_pertama/tugas/fic_navigation/fic_drawer_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_navigation/fic_navigation_pop.dart';
import 'package:project_flutter_pertama/tugas/fic_navigation/fic_navigation_push.dart';
import 'package:project_flutter_pertama/tugas/fic_navigation/fic_sliver_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_navigation/fic_tabbar_widget.dart';
import 'package:project_flutter_pertama/tugas/fic_stateful_sample/fic_stateless_stateful.dart';

class FICMainNavigation extends StatefulWidget {
  FICMainNavigation({super.key});

  @override
  State<FICMainNavigation> createState() => _FICMainNavigationState();
}

class _FICMainNavigationState extends State<FICMainNavigation> {
  List<Widget> namePages = [
    const FICDialogWidget(),
    const FICFormWidget(),
    const FICAspectRatio(),
    const FICCenterWidget(),
    const FICColumnWIdget(),
    const FICExpandedWidget(),
    const FICGridView(),
    FICListView(),
    const FICPaddingWidget(),
    const FICRowWidget(),
    const FICSizedBox(),
    const FICStackWidget(),
    FICWrapWidget(),
    const FICButtonWidget(),
    FICCircleAvatar(),
    const FICContainerWidget(),
    const FICIconWidget(),
    const FICImageWidget(),
    const FICScaffoldWidget(),
    const FICTextWidget(),
    const FICBottomNavbar(),
    const FICDrawerWidget(),
    const FICNavigationPop(),
    const FICNavigationPus(),
    const FICSliverWidget(),
    const FICTabbarWidget(),
    const FICStatelessStateful(),
  ];

  final List label = [
    {
      "label": "Dialog Widget",
    },
    {
      "label": "Form Widget",
    },
    {
      "label": "AspecRatio Widget",
    },
    {
      "label": "Center Widget",
    },
    {
      "label": "Column Widget",
    },
    {
      "label": "Exapanded Widget",
    },
    {
      "label": "GridView Widget",
    },
    {
      "label": "ListView Widget",
    },
    {
      "label": "Padding Widget",
    },
    {
      "label": "Row Widget",
    },
    {
      "label": "SizedBox Widget",
    },
    {
      "label": "Stack Widget",
    },
    {
      "label": "Wrap Widget",
    },
    {
      "label": "Button Widget",
    },
    {
      "label": "CircleAvatar Widget",
    },
    {
      "label": "Container Widget",
    },
    {
      "label": "Icon Widget",
    },
    {
      "label": "Image Widget",
    },
    {
      "label": "Scaffold Widget",
    },
    {
      "label": "Text Widget",
    },
    {
      "label": "BottomNavbar Widget",
    },
    {
      "label": "Drawer Widget",
    },
    {
      "label": "Navigation Pop Widget",
    },
    {
      "label": "Navigation Push Widget",
    },
    {
      "label": "Sliver Widget",
    },
    {
      "label": "Tabbar Widget",
    },
    {
      "label": "Stateless Stateful Widget",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Widget"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 4.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemCount: namePages.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = label[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => namePages[index]),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            item["label"],
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

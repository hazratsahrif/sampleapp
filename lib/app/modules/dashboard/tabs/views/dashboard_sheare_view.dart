import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sampleapp/app/widgets/GraphContainer.dart';

class DashBoardSheareView extends GetView {
  const DashBoardSheareView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: SingleChildScrollView(
          child: Column(
            children:   List.generate(5, (index) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GraphContainor(),
    ),
          )

          ),
        ),

      ),
    );
  }
}

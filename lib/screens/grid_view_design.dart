import 'package:flutter/material.dart';

import 'package:designs/widgets/background.dart';
import 'package:designs/widgets/custom_navigaton_bar.dart';
import 'package:designs/widgets/grid_content.dart';
import 'package:designs/widgets/header_text.dart';

class GridViewDesignScreen extends StatelessWidget {
  const GridViewDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [BackGroundGrid(), _BodyGrid()],
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

class _BodyGrid extends StatelessWidget {
  const _BodyGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HeaderText(), 
          GridContent()
          ],
      ),
    );
  }
}

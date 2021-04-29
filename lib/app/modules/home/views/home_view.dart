import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:graphite/graphite.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: GetBuilder<HomeController>(
        builder: (_) {
          return DirectGraph(
            cellWidth: 120,
            cellPadding: 24,
            list: _.nodes,
            onNodeTapDown: (details, node) => _.addNewNode(details, node),
            builder: (context, node) => Container(
              color: Colors.green,
              child: Text(node.id),
            ),
          );
        },
      ),
    );
  }
}

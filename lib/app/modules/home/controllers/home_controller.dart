import 'package:get/get.dart';
import 'package:graphite/core/typings.dart';

class HomeController extends GetxController {
  List<NodeInput> _nodes = <NodeInput>[];
  int _id = 1;

  @override
  void onInit() {
    nodes.add(NodeInput(id: '$id', next: []));
    super.onInit();
  }

  void addNewNode(details, node) {
    NodeInput selectedNode =
        nodes.firstWhere((element) => element.id == node.id);
    int index = nodes.indexWhere((element) => element.id == selectedNode.id);
    List<String> nextNodes = selectedNode.next;
    id = id + 1;
    nextNodes.add('$id');
    NodeInput updatedNode = NodeInput(id: selectedNode.id, next: nextNodes);
    nodes.setAll(index, [updatedNode]);
    nodes.add(NodeInput(id: '$id', next: []));
    print(nodes);
  }

// ################################################### //
// ################################################### //
  List<NodeInput> get nodes => _nodes;
  set nodes(List<NodeInput> nodes) {
    _nodes = nodes;
    update();
  }

  int get id => _id;
  set id(int id) => {_id = id, update()};
}

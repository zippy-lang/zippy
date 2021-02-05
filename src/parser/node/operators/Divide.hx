package parser.node.operators;

class Divide extends Operator {
    public function new(line:Int, left:Node, right:Node) {
        super(line, NodeType.Divide, left, right);
    }
}

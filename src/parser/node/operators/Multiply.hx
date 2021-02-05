package parser.node.operators;

class Multiply extends Operator {
    public function new(line:Int, left:Node, right:Node) {
        super(line, NodeType.Multiply, left, right);
    }
}

package parser.node.operators;

class SmallerThan extends Operator {
    public function new(line:Int, left:Node, right:Node) {
        super(line, NodeType.SmallerThan, left, right);
    }
}

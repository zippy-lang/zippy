package parser.node.operators;

class LogicAnd extends Operator {
    public function new(line:Int, left:Node, right:Node) {
        super(line, NodeType.LogicAnd, left, right);
    }
}

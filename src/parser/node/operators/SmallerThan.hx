package parser.node.operators;

class SmallerThan extends Operator {
    public function new(line:Int, left:Node, right:Node) {
        super(line, left, right);

        this.type = NodeType.SmallerThan;
    }
}

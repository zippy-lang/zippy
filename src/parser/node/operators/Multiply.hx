package parser.node.operators;

class Multiply extends Operator {
    public function new(line:Int, left:Node, right:Node) {
        super(line, left, right);

        this.type = NodeType.Multiply;
    }
}

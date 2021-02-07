package parser.nodes.operators;

class Operator extends Node {
    public var left:Node;
    public var right:Node;

    public function new(line:Int, type:NodeType, left:Node, right:Node) {
        super(line, type);

        this.left = left;
        this.right = right;
    }
}

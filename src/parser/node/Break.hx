package parser.node;

class Break extends Node {
    public function new(line:Int) {
        super(line, NodeType.Break);
    }
}

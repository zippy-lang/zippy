package parser.node.operators;

class LParen extends Operator {
    public function new(line:Int) {
        this.line = line;
        this.type = NodeType.LParen;
    }
}

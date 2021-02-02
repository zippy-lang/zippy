package parser.node.operators;

class RParen extends Operator {

    public function new(line:Int) {
        super();

        this.line = line;
        this.type = NodeType.RParen;
    }
}

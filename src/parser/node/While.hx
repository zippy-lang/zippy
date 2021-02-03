package parser.node;

class While extends Node {
    public final condition:Expression;
    public final block:Block;

    public function new(line:Int, condition:Expression, block:Block) {
        this.line = line;
        this.type = NodeType.While;
        this.condition = condition;
        this.block = block;
    }
}

package parser.node;

class Ident extends Node {
    public final value:String;

    public function new(line:Int, value:String) {
        super(line, NodeType.Ident);

        this.value = value;
    }
}

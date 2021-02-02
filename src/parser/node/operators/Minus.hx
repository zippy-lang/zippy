package parser.node.operators;

import parser.nodes.operators.Operator.OperatorAssociativity;

class Minus extends Operator {

    public function new(line:Int) {
        super();

        this.line = line;
        this.type = NodeType.Minus;
        this.precedence = 4;
        this.associativity = OperatorAssociativity.Left;
    }
}

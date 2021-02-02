package parser.node.operators;

import parser.nodes.operators.Operator.OperatorAssociativity;

class Divide extends Operator {

    public function new(line:Int) {
        super();

        this.line = line;
        this.type = NodeType.Divide;
        this.precedence = 3;
        this.associativity = OperatorAssociativity.Left;
    }
}

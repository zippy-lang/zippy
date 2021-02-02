package parser.node.operators;

enum OperatorAssociativity {
	Left;
	Right;
}

class Operator extends Node {

	public var precedence = 0;
	public var associativity = OperatorAssociativity.Left;

	public function new() {}
}

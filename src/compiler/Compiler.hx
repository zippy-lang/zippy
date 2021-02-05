package compiler;

import object.objects.*;
import compiler.symbol.SymbolTable;
import parser.nodes.operators.Operator;
import haxe.io.BytesBuffer;
import parser.nodes.datatypes.Int.IntN;
import code.Code;
import code.OpCode;
import parser.nodes.*;
import parser.nodes.Node;

class Compiler {
    public final constants:Array<Object> = [];
    public var instructions = new BytesBuffer();
    public final symbolTable = new SymbolTable();

    public function new() {}

    public function compile(node:Node) {
        switch (node.type) {
            case Block:
                final cBlock = cast(node, Block);
                for (blockNode in cBlock.body) {
                    compile(blockNode);
                }
            case Statement:
                final cStatement = cast(node, Statement);
                compile(cStatement.value.value);
                emit(OpCode.Pop, []);
            case Expression:
                final cExpression = cast(node, Expression);
                compile(cExpression.value);
            case Plus | Multiply:
                final cOperator = cast(node, Operator);
                compile(cOperator.left);
                compile(cOperator.right);

                switch (cOperator.type) {
                    case Plus: emit(OpCode.Add, []);
                    case Multiply: emit(OpCode.Multiply, []);
                    default:
                }
            case Variable:
                final cVariable = cast(node, Variable);
                final symbol = symbolTable.define(cVariable.name);
                compile(cVariable.value);
                emit(OpCode.SetLocal, [symbol.index]);
            case Ident:
                final cIdent = cast(node, Ident);
                final symbol = symbolTable.resolve(cIdent.value);
                if (symbol == null) {
                    // TODO: error
                }
                emit(OpCode.GetLocal, [symbol.index]);
            case If:
                final cIf = cast(node, If);
                compile(cIf.condition);
                emit(OpCode.Jump, [instructions.length + 5]);
                compile(cIf.consequence);
                emit(OpCode.JumpNot, [instructions.length + 5]);
            case Int | Boolean:
                emit(OpCode.Constant, [addConstant(node)]);
            default:
        }
    }

    function emit(op:OpCode, operands:Array<Int>) {
        final instruction = Code.make(op, operands);
        instructions.add(instruction);
    }

    function addConstant(node:Node):Int {
        switch (node.type) {
            case Int:
                constants.push(new IntObject(cast(node, IntN).value));
            case Boolean:
                constants.push(new BooleanObject(cast(node, Boolean).value));
            default:
        }

        return constants.length - 1;
    }
}

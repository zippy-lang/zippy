import evaluator.Evaluator;
import compiler.Compiler;
import parser.Parser;
import lexer.Lexer;
import sys.io.File;

class Zippy {
    public static var filename:String;
    public static var code:String;

    public static function main() {
        filename = "input.zip";
        code = File.getContent("./input.zip");

        final lexer = new Lexer(code);

        final parser = new Parser(lexer);
        parser.generateAst();
        parser.writeAst();

        final compiler = new Compiler();
        compiler.compile(parser.ast);

        final evaluator = new Evaluator(compiler.instructions, compiler.constants, compiler.lineNumberTable, compiler.localVariableTable);
        evaluator.eval();
    }
}

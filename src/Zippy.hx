import evaluator.Evaluator;
import compiler.Compiler;
import parser.Parser;
import lexer.Lexer;
import sys.io.File;

class Zippy {
    public static function main() {
        final code = File.getContent("./input.zip");

        final lexer = new Lexer(code, "input.zip");

        final parser = new Parser(lexer);
        parser.generateAst();
        parser.writeAst();

        /* final compiler = new Compiler();
            compiler.compile(parser.ast);
            compiler.writeByteCode(); */
        /* final evaluator = new Evaluator(compiler.instructions.getBytes(), compiler.constants);
            evaluator.eval(); */
    }
}

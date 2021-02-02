import sys.io.File;
import lexer.Lexer;
import parser.Parser;

class Zippy {
    public static function main() {
        var code = File.getContent("./input.zip");

        var lexer = new Lexer(code);
        var parser = new Parser(lexer);
        parser.generateAst();
        parser.writeAst();
    }
}

class Lani::Parser
  token INTEGER
  token FLOAT
  token ADD
  token SUBTRACT
  token MULTIPLY
  token DIVIDE
  token NEWLINE
  token RPAREN
  token LPAREN
  token STRING
  token IDENTIFIER
  token ASSIGN
  token TRUE
  token FALSE
  token NIL
  token LSQBRA
  token RSQBRA
  token LCBRA
  token RCBRA
  token ROCKET
  token COMMA
  token DOT
  token FN

  prechigh
    left MULTIPLY DIVIDE
    left ADD SUBTRACT
  preclow

  options no_result_var
rule
  root : program

  program : /* nothing */ { AST::Program.new( filename, lineno, [])}
          | expressions   { AST::Program.new( filename, lineno, val[0])}

  number : INTEGER { AST::IntegerNode.new( filename, lineno, val[0])}
         | FLOAT   { AST::FloatNode.new( filename, lineno, val[0])}

  string : STRING { AST::StringNode.new( filename, lineno, val[0])}

  variable_access : IDENTIFIER { AST::VariableAccessNode.new( filename, lineno, val[0])}

  variable_assignment : IDENTIFIER ASSIGN expression {AST::VariableAssignmentNode.new( filename, lineno, val[0], val[2]) }

  boolean : TRUE { AST::TrueBooleanNode.new( filename, lineno)}
          | FALSE { AST::FalseBooleanNode.new( filename, lineno)}
          | NIL { AST::NilBooleanNode.new( filename, lineno)}

  array : LSQBRA RSQBRA { AST::ArrayNode.new( filename, lineno, [])}
        | LSQBRA elements RSQBRA { AST::ArrayNode.new( filename, lineno, val[1]) }

  elements : expression { [val[0]] }
           | elements COMMA expression { val[0] << val[2] }

  hash : LCBRA RCBRA { AST::HashNode.new(filename, lineno, []) }
       | LCBRA pairs RCBRA { AST::HashNode.new(filename, lineno, val[1]) }

  pairs : pair
        | pairs COMMA pair { val[0] + val[2] }

  pair : expression ROCKET expression { [val[0], val[2]] }

  message_send : expression DOT IDENTIFIER { AST::MessageSendNode.new( filename, lineno, val[0], val[2] )}
               | expression DOT IDENTIFIER LPAREN elements RPAREN { AST::MessageSendNode.new( filename, lineno, val[0], val[2], val[4])}

  arguments : IDENTIFIER { [val[0]] }
            | arguments COMMA IDENTIFIER { val[0] << val[2] }

  closure : FN LCBRA expressions RCBRA { AST::ClosureNode.new( filename, lineno, [], val[2])}
          | FN arguments LCBRA expressions RCBRA { AST::ClosureNode.new( filename, lineno, val[1], val[3])}

  expression : number
             | binary_operation
             | LPAREN expression RPAREN { val[1] }
             | string
             | variable_access
             | variable_assignment
             | boolean
             | array
             | hash
             | message_send
             | closure


  binary_operation : expression ADD expression {AST::AddNode.new( filename, lineno, val[0], val[2])}
                   | expression SUBTRACT expression {AST::SubtractNode.new( filename, lineno, val[0], val[2])}
                   | expression MULTIPLY expression {AST::MultiplyNode.new( filename, lineno, val[0], val[2])}
                   | expression DIVIDE expression {AST::DivideNode.new( filename, lineno, val[0], val[2])}

  expressions : expression { [val[0]] }
              | expressions terminator expression { val[0] << val[2] }

  terminator : NEWLINE


end

---- header ----
require_relative 'lexer'

---- inner ----

def filename
  @filename
end

alias_method :parse_string, :scan_str

def pre_exe
  []
end

def on_error(t, val, vstack)
  raise ParseError, sprintf("\nparse error on value %s (%s) #{@filename}:#{@line}",
      val.inspect, token_to_str(t) || '?')
end

---- footer ----
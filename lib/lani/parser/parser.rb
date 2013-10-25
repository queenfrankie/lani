#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.9
# from Racc grammer file "".
#

require 'racc/parser.rb'

require_relative 'lexer'

module Lani
  class Parser < Racc::Parser

module_eval(<<'...end lani.y/module_eval...', 'lani.y', 95)

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

...end lani.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    36,    37,    38,    39,    36,    37,    38,    39,    36,    37,
    38,    39,    36,    37,    38,    39,    44,    54,    24,    35,
    45,    26,    46,    35,    47,    48,    27,    35,    41,    49,
    35,    35,    36,    37,    38,    39,    36,    37,    38,    39,
    36,    37,    38,    39,    36,    37,    38,    39,    35,   nil,
   nil,    35,     4,     5,   nil,    35,    38,    39,   nil,    35,
    16,     6,     7,    35,     8,     9,    10,    11,   nil,    12,
    31,     4,     5,    35,    38,    39,   nil,   nil,   nil,    16,
     6,     7,   nil,     8,     9,    10,    11,   nil,    12,     4,
     5,    35,   nil,   nil,   nil,   nil,   nil,    16,     6,     7,
   nil,     8,     9,    10,    11,    28,    12,     4,     5,   nil,
   nil,   nil,   nil,   nil,   nil,    16,     6,     7,   nil,     8,
     9,    10,    11,   nil,    12,     4,     5,   nil,   nil,   nil,
   nil,   nil,   nil,    16,     6,     7,   nil,     8,     9,    10,
    11,   nil,    12,     4,     5,   nil,   nil,   nil,   nil,   nil,
   nil,    16,     6,     7,   nil,     8,     9,    10,    11,   nil,
    12,     4,     5,   nil,   nil,   nil,   nil,   nil,   nil,    16,
     6,     7,   nil,     8,     9,    10,    11,   nil,    12,     4,
     5,   nil,   nil,   nil,   nil,   nil,   nil,    16,     6,     7,
   nil,     8,     9,    10,    11,   nil,    12,     4,     5,   nil,
   nil,   nil,   nil,   nil,   nil,    16,     6,     7,   nil,     8,
     9,    10,    11,   nil,    12,     4,     5,   nil,   nil,   nil,
   nil,   nil,   nil,    16,     6,     7,   nil,     8,     9,    10,
    11,   nil,    12,     4,     5,   nil,   nil,   nil,   nil,   nil,
   nil,    16,     6,     7,   nil,     8,     9,    10,    11,   nil,
    12,     4,     5,   nil,   nil,   nil,   nil,   nil,   nil,    16,
     6,     7,   nil,     8,     9,    10,    11,   nil,    12,     4,
     5,   nil,   nil,   nil,   nil,   nil,   nil,    16,     6,     7,
   nil,     8,     9,    10,    11,   nil,    12 ]

racc_action_check = [
    13,    13,    13,    13,    30,    30,    30,    30,    34,    34,
    34,    34,    40,    40,    40,    40,    29,    40,     1,    13,
    29,     3,    32,    30,    32,    34,     7,    34,    24,    35,
    52,    40,    42,    42,    42,    42,    43,    43,    43,    43,
    55,    55,    55,    55,    57,    57,    57,    57,    53,   nil,
   nil,    42,    12,    12,   nil,    43,    50,    50,   nil,    55,
    12,    12,    12,    57,    12,    12,    12,    12,   nil,    12,
    12,     0,     0,    50,    51,    51,   nil,   nil,   nil,     0,
     0,     0,   nil,     0,     0,     0,     0,   nil,     0,    11,
    11,    51,   nil,   nil,   nil,   nil,   nil,    11,    11,    11,
   nil,    11,    11,    11,    11,    11,    11,    16,    16,   nil,
   nil,   nil,   nil,   nil,   nil,    16,    16,    16,   nil,    16,
    16,    16,    16,   nil,    16,    25,    25,   nil,   nil,   nil,
   nil,   nil,   nil,    25,    25,    25,   nil,    25,    25,    25,
    25,   nil,    25,    27,    27,   nil,   nil,   nil,   nil,   nil,
   nil,    27,    27,    27,   nil,    27,    27,    27,    27,   nil,
    27,    36,    36,   nil,   nil,   nil,   nil,   nil,   nil,    36,
    36,    36,   nil,    36,    36,    36,    36,   nil,    36,    37,
    37,   nil,   nil,   nil,   nil,   nil,   nil,    37,    37,    37,
   nil,    37,    37,    37,    37,   nil,    37,    38,    38,   nil,
   nil,   nil,   nil,   nil,   nil,    38,    38,    38,   nil,    38,
    38,    38,    38,   nil,    38,    39,    39,   nil,   nil,   nil,
   nil,   nil,   nil,    39,    39,    39,   nil,    39,    39,    39,
    39,   nil,    39,    45,    45,   nil,   nil,   nil,   nil,   nil,
   nil,    45,    45,    45,   nil,    45,    45,    45,    45,   nil,
    45,    47,    47,   nil,   nil,   nil,   nil,   nil,   nil,    47,
    47,    47,   nil,    47,    47,    47,    47,   nil,    47,    48,
    48,   nil,   nil,   nil,   nil,   nil,   nil,    48,    48,    48,
   nil,    48,    48,    48,    48,   nil,    48 ]

racc_action_pointer = [
    69,    18,   nil,    13,   nil,   nil,   nil,    13,   nil,   nil,
   nil,    87,    50,    -4,   nil,   nil,   105,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    28,   123,   nil,   141,   nil,    -2,
     0,   nil,     2,   nil,     4,    17,   159,   177,   195,   213,
     8,   nil,    28,    32,   nil,   231,   nil,   249,   267,   nil,
    50,    68,     7,    25,   nil,    36,   nil,    40 ]

racc_action_default = [
    -2,   -39,    -1,    -3,    -4,    -5,    -6,    -7,    -9,   -10,
   -11,   -39,   -39,   -36,   -22,   -23,   -39,   -25,   -26,   -27,
   -28,   -29,   -30,   -31,   -39,   -39,   -38,   -39,   -12,   -39,
   -14,   -16,   -39,   -18,   -39,   -39,   -39,   -39,   -39,   -39,
   -39,    58,   -37,    -8,   -13,   -39,   -17,   -39,   -39,   -21,
   -32,   -33,   -34,   -35,   -24,   -15,   -19,   -20 ]

racc_goto_table = [
    13,     1,     2,     3,    29,    33,    32,    25,   nil,   nil,
   nil,    30,   nil,   nil,   nil,   nil,    40,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    42,   nil,    43,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    50,    51,    52,    53,
    56,   nil,   nil,   nil,   nil,    55,   nil,   nil,    57 ]

racc_goto_check = [
     8,     1,     2,     3,    11,    14,    13,    17,   nil,   nil,
   nil,     8,   nil,   nil,   nil,   nil,     8,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,     8,   nil,     8,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,     8,     8,     8,     8,
    14,   nil,   nil,   nil,   nil,     8,   nil,   nil,     8 ]

racc_goto_pointer = [
   nil,     1,     2,     3,   nil,   nil,   nil,   nil,     0,   nil,
   nil,    -7,   nil,    -6,    -7,   nil,   nil,     4 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,    14,    17,    18,    19,    34,    20,
    21,   nil,    22,   nil,   nil,    23,    15,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 25, :_reduce_none,
  0, 26, :_reduce_2,
  1, 26, :_reduce_3,
  1, 28, :_reduce_4,
  1, 28, :_reduce_5,
  1, 29, :_reduce_6,
  1, 30, :_reduce_7,
  3, 31, :_reduce_8,
  1, 33, :_reduce_9,
  1, 33, :_reduce_10,
  1, 33, :_reduce_11,
  2, 34, :_reduce_12,
  3, 34, :_reduce_13,
  1, 35, :_reduce_14,
  3, 35, :_reduce_15,
  2, 36, :_reduce_16,
  3, 36, :_reduce_17,
  1, 37, :_reduce_none,
  3, 37, :_reduce_19,
  3, 38, :_reduce_20,
  3, 39, :_reduce_21,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  3, 32, :_reduce_24,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  1, 32, :_reduce_none,
  3, 40, :_reduce_32,
  3, 40, :_reduce_33,
  3, 40, :_reduce_34,
  3, 40, :_reduce_35,
  1, 27, :_reduce_36,
  3, 27, :_reduce_37,
  1, 41, :_reduce_none ]

racc_reduce_n = 39

racc_shift_n = 58

racc_token_table = {
  false => 0,
  :error => 1,
  :INTEGER => 2,
  :FLOAT => 3,
  :ADD => 4,
  :SUBTRACT => 5,
  :MULTIPLY => 6,
  :DIVIDE => 7,
  :NEWLINE => 8,
  :RPAREN => 9,
  :LPAREN => 10,
  :STRING => 11,
  :IDENTIFIER => 12,
  :ASSIGN => 13,
  :TRUE => 14,
  :FALSE => 15,
  :NIL => 16,
  :LSQBRA => 17,
  :RSQBRA => 18,
  :LCBRA => 19,
  :RCBRA => 20,
  :ROCKET => 21,
  :COMMA => 22,
  :DOT => 23 }

racc_nt_base = 24

racc_use_result_var = false

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "INTEGER",
  "FLOAT",
  "ADD",
  "SUBTRACT",
  "MULTIPLY",
  "DIVIDE",
  "NEWLINE",
  "RPAREN",
  "LPAREN",
  "STRING",
  "IDENTIFIER",
  "ASSIGN",
  "TRUE",
  "FALSE",
  "NIL",
  "LSQBRA",
  "RSQBRA",
  "LCBRA",
  "RCBRA",
  "ROCKET",
  "COMMA",
  "DOT",
  "$start",
  "root",
  "program",
  "expressions",
  "number",
  "string",
  "variable_access",
  "variable_assignment",
  "expression",
  "boolean",
  "array",
  "elements",
  "hash",
  "pairs",
  "pair",
  "message_send",
  "binary_operation",
  "terminator" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

module_eval(<<'.,.,', 'lani.y', 33)
  def _reduce_2(val, _values)
     AST::Program.new( filename, lineno, [])
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 34)
  def _reduce_3(val, _values)
     AST::Program.new( filename, lineno, val[0])
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 36)
  def _reduce_4(val, _values)
     AST::IntegerNode.new( filename, lineno, val[0])
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 37)
  def _reduce_5(val, _values)
     AST::FloatNode.new( filename, lineno, val[0])
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 39)
  def _reduce_6(val, _values)
     AST::StringNode.new( filename, lineno, val[0])
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 41)
  def _reduce_7(val, _values)
     AST::VariableAccessNode.new( filename, lineno, val[0])
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 43)
  def _reduce_8(val, _values)
    AST::VariableAssignmentNode.new( filename, lineno, val[0], val[2]) 
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 45)
  def _reduce_9(val, _values)
     AST::TrueBooleanNode.new( filename, lineno)
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 46)
  def _reduce_10(val, _values)
     AST::FalseBooleanNode.new( filename, lineno)
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 47)
  def _reduce_11(val, _values)
     AST::NilBooleanNode.new( filename, lineno)
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 49)
  def _reduce_12(val, _values)
     AST::ArrayNode.new( filename, lineno, [])
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 50)
  def _reduce_13(val, _values)
     AST::ArrayNode.new( filename, lineno, val[1]) 
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 52)
  def _reduce_14(val, _values)
     [val[0]] 
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 53)
  def _reduce_15(val, _values)
     val[0] << val[2] 
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 55)
  def _reduce_16(val, _values)
     AST::HashNode.new(filename, lineno, []) 
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 56)
  def _reduce_17(val, _values)
     AST::HashNode.new(filename, lineno, val[1]) 
  end
.,.,

# reduce 18 omitted

module_eval(<<'.,.,', 'lani.y', 59)
  def _reduce_19(val, _values)
     val[0] + val[2] 
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 61)
  def _reduce_20(val, _values)
     [val[0], val[2]] 
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 63)
  def _reduce_21(val, _values)
     AST::MessageSendNode.new( filename, lineno, val[0], val[2] )
  end
.,.,

# reduce 22 omitted

# reduce 23 omitted

module_eval(<<'.,.,', 'lani.y', 67)
  def _reduce_24(val, _values)
     val[1] 
  end
.,.,

# reduce 25 omitted

# reduce 26 omitted

# reduce 27 omitted

# reduce 28 omitted

# reduce 29 omitted

# reduce 30 omitted

# reduce 31 omitted

module_eval(<<'.,.,', 'lani.y', 77)
  def _reduce_32(val, _values)
    AST::AddNode.new( filename, lineno, val[0], val[2])
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 78)
  def _reduce_33(val, _values)
    AST::SubtractNode.new( filename, lineno, val[0], val[2])
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 79)
  def _reduce_34(val, _values)
    AST::MultiplyNode.new( filename, lineno, val[0], val[2])
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 80)
  def _reduce_35(val, _values)
    AST::DivideNode.new( filename, lineno, val[0], val[2])
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 82)
  def _reduce_36(val, _values)
     [val[0]] 
  end
.,.,

module_eval(<<'.,.,', 'lani.y', 83)
  def _reduce_37(val, _values)
     val[0] << val[2] 
  end
.,.,

# reduce 38 omitted

def _reduce_none(val, _values)
  val[0]
end

  end   # class Parser
  end   # module Lani



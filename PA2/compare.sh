diff --color=auto <(./lexer "$1" | /afs/ir/class/cs143/bin/parser) <(./lexer "$1" | ./parser)
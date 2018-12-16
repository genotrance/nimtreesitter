import treesitter/runtime
import treesitter_ocaml/ocaml

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterocaml()) == true

p.tsParserDelete()
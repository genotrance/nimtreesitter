import treesitter/runtime
import treesitter/ocaml

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterocaml()) == true

p.tsParserDelete()
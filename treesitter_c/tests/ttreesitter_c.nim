import treesitter/runtime
import treesitter_c/c

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterc()) == true

p.tsParserDelete()
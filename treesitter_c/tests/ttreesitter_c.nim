import treesitter/runtime
import treesitter/c

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterc()) == true

p.tsParserDelete()
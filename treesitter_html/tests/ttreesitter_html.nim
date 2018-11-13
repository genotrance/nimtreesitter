import treesitter/runtime
import treesitter/html

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterhtml()) == true

p.tsParserDelete()
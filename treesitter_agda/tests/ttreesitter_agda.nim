import treesitter/runtime
import treesitter/agda

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitteragda()) == true

p.tsParserDelete()
import treesitter/runtime
import treesitter/go

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSittergo()) == true

p.tsParserDelete()
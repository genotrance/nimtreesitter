import treesitter/runtime
import treesitter_go/go

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSittergo()) == true

p.tsParserDelete()
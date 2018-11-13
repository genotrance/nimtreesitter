import treesitter/runtime
import treesitter/rust

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterrust()) == true

p.tsParserDelete()
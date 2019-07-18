import treesitter/api
import treesitter_rust/rust

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterrust()) == true

p.tsParserDelete()
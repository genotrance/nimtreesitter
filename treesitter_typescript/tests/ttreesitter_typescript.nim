import treesitter/runtime
import treesitter/typescript

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSittertypescript()) == true

p.tsParserDelete()
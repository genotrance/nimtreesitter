import treesitter/runtime
import treesitter_typescript/typescript

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSittertypescript()) == true

p.tsParserDelete()
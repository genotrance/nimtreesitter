import treesitter/runtime
import treesitter/javascript

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterjavascript()) == true

p.tsParserDelete()
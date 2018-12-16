import treesitter/runtime
import treesitter_javascript/javascript

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterjavascript()) == true

p.tsParserDelete()
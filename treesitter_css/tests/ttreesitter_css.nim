import treesitter/runtime
import treesitter/css

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSittercss()) == true

p.tsParserDelete()
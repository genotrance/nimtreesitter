import treesitter/runtime
import treesitter_css/css

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSittercss()) == true

p.tsParserDelete()
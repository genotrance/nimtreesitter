import treesitter/runtime
import treesitter/cpp

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSittercpp()) == true

p.tsParserDelete()
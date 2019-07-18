import treesitter/api
import treesitter_cpp/cpp

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSittercpp()) == true

p.tsParserDelete()
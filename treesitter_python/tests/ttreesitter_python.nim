import treesitter/runtime
import treesitter/python

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterpython()) == true

p.tsParserDelete()
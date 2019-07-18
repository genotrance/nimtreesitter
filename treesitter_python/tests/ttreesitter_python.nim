import treesitter/api
import treesitter_python/python

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterpython()) == true

p.tsParserDelete()
import treesitter/api
import treesitter_agda/agda

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitteragda()) == true

p.tsParserDelete()
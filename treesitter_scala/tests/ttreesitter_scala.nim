import treesitter/api
import treesitter_scala/scala

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterscala()) == true

p.tsParserDelete()
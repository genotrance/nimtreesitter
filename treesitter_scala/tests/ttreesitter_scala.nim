import treesitter/runtime
import treesitter/scala

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterscala()) == true

p.tsParserDelete()
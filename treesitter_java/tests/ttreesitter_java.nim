import treesitter/api
import treesitter_java/java

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterjava()) == true

p.tsParserDelete()
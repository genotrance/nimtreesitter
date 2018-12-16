import treesitter/runtime
import treesitter_java/java

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterjava()) == true

p.tsParserDelete()
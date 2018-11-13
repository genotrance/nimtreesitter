import treesitter/runtime
import treesitter/java

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterjava()) == true

p.tsParserDelete()
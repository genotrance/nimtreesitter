import treesitter/runtime
import treesitter/ruby

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterruby()) == true

p.tsParserDelete()
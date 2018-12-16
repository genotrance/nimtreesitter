import treesitter/runtime
import treesitter_ruby/ruby

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterruby()) == true

p.tsParserDelete()
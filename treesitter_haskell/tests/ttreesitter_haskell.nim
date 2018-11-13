import treesitter/runtime
import treesitter/haskell

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterhaskell()) == true

p.tsParserDelete()
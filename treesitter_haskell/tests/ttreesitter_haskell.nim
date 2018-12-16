import treesitter/runtime
import treesitter_haskell/haskell

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterhaskell()) == true

p.tsParserDelete()
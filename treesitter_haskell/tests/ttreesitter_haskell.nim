import treesitter/api
import treesitter_haskell/haskell

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterhaskell()) == true

p.tsParserDelete()
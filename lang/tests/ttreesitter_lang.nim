import treesitter/runtime
import treesitter/${LANG}

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitter${LANG}()) == true

p.tsParserDelete()
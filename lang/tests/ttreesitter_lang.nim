import treesitter/runtime
import treesitter_${LANG}/${LANG}

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitter${LANG}()) == true

p.tsParserDelete()
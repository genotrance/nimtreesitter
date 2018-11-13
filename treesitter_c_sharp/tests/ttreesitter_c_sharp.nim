import treesitter/runtime
import treesitter/c_sharp

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterc_sharp()) == true

p.tsParserDelete()
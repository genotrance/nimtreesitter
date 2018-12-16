import treesitter/runtime
import treesitter_c_sharp/c_sharp

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterc_sharp()) == true

p.tsParserDelete()
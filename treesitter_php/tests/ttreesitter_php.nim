import treesitter/runtime
import treesitter_php/php

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterphp()) == true

p.tsParserDelete()
import treesitter/runtime
import treesitter/php

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterphp()) == true

p.tsParserDelete()
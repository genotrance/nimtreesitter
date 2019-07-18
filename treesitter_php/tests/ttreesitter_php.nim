import treesitter/api
import treesitter_php/php

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterphp()) == true

p.tsParserDelete()
import treesitter/api
import treesitter_bash/bash

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterbash()) == true

p.tsParserDelete()
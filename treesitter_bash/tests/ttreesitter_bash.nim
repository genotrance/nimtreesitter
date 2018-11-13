import treesitter/runtime
import treesitter/bash

var p = tsParserNew()

assert p.tsParserSetLanguage(treeSitterbash()) == true

p.tsParserDelete()
# Package

version       = "0.1.0"
author        = "genotrance"
description   = "tree-sitter-haskell wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimgen >= 0.5.0", "treesitter >= " & version

var
  name = "treesitter_haskell"
  cmd = when defined(Windows): "cmd /c " else: ""

if fileExists(name & ".nimble"):
  mkDir("treesitter")

task setup, "Checkout and generate":
  if gorgeEx(cmd & "nimgen").exitCode != 0:
    withDir(".."):
      exec "nimble install nimgen -y"
  exec cmd & "nimgen " & name & ".cfg"

before install:
  setupTask()

task test, "Run tests":
  exec "nim c --gcc.linkerexe:\"g++\" -f -r tests/t" & name & ".nim"

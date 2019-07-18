# Package

version       = "0.1.1"
author        = "genotrance"
description   = "tree-sitter-c wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimgen >= 0.5.0", "treesitter >= " & version

var
  name = "treesitter_c"
  cmd = when defined(Windows): "cmd /c " else: ""
  cc = when defined(MacOSX): "clang" else: "gcc"

if fileExists(name & ".nimble"):
  mkDir(name)

task setup, "Checkout and generate":
  if gorgeEx(cmd & "nimgen").exitCode != 0:
    withDir(".."):
      exec "nimble install nimgen -y"
  exec cmd & "nimgen " & name & ".cfg"

before install:
  setupTask()

task test, "Run tests":
  exec "nim c --" & cc & ".linkerexe:\"g++\" -f -r tests/t" & name & ".nim"

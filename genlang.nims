import ospaths, strutils

let
  langs = @["bash", "c", "cpp", "css", "go", "html", "javascript",
            "ocaml", "php", "python", "ruby", "rust", "typescript",
            "agda", "c_sharp", "haskell", "java", "scala"]
  broken = @["julia"]

var
  gen = false
  git = false
  test = false
  uninstall = false

for i in 3 .. paramCount():
  case paramStr(i):
    of "--gen":
      gen = true
    of "--git":
      git = true
    of "--test":
      test = true
    of "--uninstall":
      uninstall = true

if test:
  withDir("treesitter"):
    exec "nimble develop -y"
    exec "nimble setup"
    exec "nimble test"

for lang in langs:
  let flang = "treesitter_" & lang

  if gen:
    mkDir(flang)
    mkDir(flang/"tests")

    for file in ["treesitter_lang.cfg", "treesitter_lang.nimble", "tests"/"ttreesitter_lang.nim"]:
      let nfile = file.replace("lang", lang)
      cpFile("lang"/file, flang/nfile)

      writeFile(flang/nfile,
        readFile(flang/nfile).
          replace("${LANG}", lang).
          replace("${HLANG}", lang.replace("_", "-")))

  withDir(flang):
    if test:
      exec "nimble develop -y"
      exec "nimble setup"
      exec "nimble test"
      if uninstall:
        exec "nimble uninstall -y " & flang

    if git:
      exec "git add " & flang & ".cfg"
      exec "git add " & flang & ".nimble"
      exec "git add -f tests/ttreesitter_" & lang & ".nim"

if test and uninstall:
  withDir("treesitter"):
    exec "nimble uninstall -y"
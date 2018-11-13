treesitter is a [Nim](https://nim-lang.org/) wrapper for the [tree-sitter](https://github.com/tree-sitter/tree-sitter) library.

treesitter is distributed as a [Nimble](https://github.com/nim-lang/nimble) package and depends on [nimgen](https://github.com/genotrance/nimgen) and [c2nim](https://github.com/nim-lang/c2nim/) to generate the wrappers. The tree-sitter source code is downloaded using Git so having ```git``` in the path is required.

__Installation__

treesitter can be installed via [Nimble](https://github.com/nim-lang/nimble):

```
> nimble install https://github.com/genotrance/nimtreesitter?subdir=treesitter
```

This will download, wrap and install treesitter in the standard Nimble package location, typically ~/.nimble. Once installed, it can be imported into any Nim program.

Individual language grammars can be installed as well to parse source files:

```
> nimble install https://github.com/genotrance/nimtreesitter?subdir=treesitter_c
```

This will download, wrap and install the C grammar. Given treesitter is a dependency, any language grammar can be installed directly and treesitter will get installed automatically.

Grammars are available for the following languages:
- Agda
- Bash
- C / C++ / C# / CSS
- Go
- Haskell, HTML
- Java, Javascript
- OCaml
- PHP, Python
- Ruby, Rust
- Scala
- Typescript

__Usage__

Refer to the ```tests``` directory for examples on how the library can be used.

__Credits__

This library wraps the tree-sitter source code and all licensing terms of [tree-sitter](https://github.com/tree-sitter/tree-sitter/blob/master/LICENSE) apply to the usage of this package.

Credits go out to [c2nim](https://github.com/nim-lang/c2nim/) as well without which this package would be greatly limited in its abilities.

__Feedback__

treesitter is a work in progress and any feedback or suggestions are welcome. It is hosted on [GitHub](https://github.com/genotrance/nimtreesitter) with an MIT license so issues, forks and PRs are most appreciated.

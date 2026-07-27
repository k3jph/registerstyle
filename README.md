# registerstyle

`registerstyle` is a LaTeX package for writing genealogical register-style prose.

Current development version: 1.19.

## What it currently does

- Defines people with `\definepersonkv` or the older positional `\defineperson`.
- Computes generation numbers from parent links.
- Prints main register entries with `\mainperson`.
- Provides child-list helpers with `children`, `childrenof`, and `\child`.
- Stores structured birth and death metadata.
- Formats dates through `datetime2` using `\registerdate{YYYY-MM-DD}`.
- Provides warning-only validation with `\checkperson` and `\checkregister`.

## Build

From the package root:

```sh
latex registerstyle.ins
```

This extracts `registerstyle.sty` from `source/registerstyle.dtx`.

To build the draft documentation:

```sh
pdflatex source/registerstyle.dtx
makeindex -s gind.ist -o registerstyle.ind registerstyle.idx
pdflatex source/registerstyle.dtx
```

## Examples and tests

The `examples/` directory contains a small compilable example. The `testfiles/` directory contains simple smoke tests intended for manual compilation during early development.

A fuller Stuart four-generation example is planned once validation and package structure settle.

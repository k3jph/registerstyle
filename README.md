# registerstyle

`registerstyle` is a LaTeX package for writing genealogical register-style prose.

Current development version: 1.20 packaging fixture.

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

The `examples/` directory contains a minimal register and a fuller Stuart four-generation fixture. The `testfiles/` directory contains simple smoke tests intended for manual compilation during early development, including a copy of the Stuart fixture for regression testing.

The Stuart example includes legitimate descendants of James VI and I and Anne of Denmark through four generations, with spouses included only where needed to establish parentage. Miscarriages, stillbirths, illegitimate lines, alleged lines, and morganatic branches are omitted from the example scope.

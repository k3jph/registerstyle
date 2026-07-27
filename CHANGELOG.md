# Changelog

All notable changes to the `registerstyle` package will be documented
in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/),
and this project adheres to
[Semantic Versioning](https://semver.org/) starting from version 2.0.

## [2.0] - 2026-07-27

### Added
- Marriage support: `marriage-date`, `marriage-place` keys and
  `\getpersonmarriagedate`, `\getpersonmarriageplace` accessors.
- Multiple marriages via `\addmarriage{id}{spouse-id}{key=value}`.
- Continuation markers: `\childref` command prints a "+" prefix for
  children who will appear later as main entries.
- Approximate date qualifiers: `\circa`, `\before`, `\after`,
  `\between` for uncertain dates.
- Additional vital-record keys: `baptism`, `baptism-place`, `burial`,
  `burial-place`, `occupation`.
- Corresponding accessors: `\getpersonbaptismdate`,
  `\getpersonbaptismplace`, `\getpersonburialdate`,
  `\getpersonburialplace`, `\getpersonoccupation`.
- Gender-aware pronoun helpers: `\heshethey`, `\himherthem`,
  `\hisherhtheir`, `\HeSheThey`, `\HimHerThem`, `\HisHerTheir`
  keyed to the `sex` field.
- Source/note support: `\registersource` for footnote citations.
- NGSQ (Modified Register) numbering via `numbering=ngsq` option.
- Automatic generation headings via `\generationheading{id}`.
- LPPL 1.3c license.
- `l3build` test suite with regression tests.
- `build.lua` for building, testing, and CTAN packaging.
- Comprehensive `.dtx` documentation with user guide and
  implementation notes.
- `CHANGELOG.md` and `MANIFEST.md`.
- Additional examples: multi-marriage, American family, getting
  started.

### Changed
- Internal helpers (`\collectancestors`, `\addoneancestor`,
  `\ifabbrevparents`) moved to `r@` namespace.
- `kidslist` environment removed (use `children` instead).
- `\r@use` removed (was defined but never called).
- Version numbering reset to 2.0 for CTAN submission.
- `.sty` is now generated from `.dtx` via `l3build unpack`.

### Fixed
- Redundant `\makeatletter`/`\makeatother` in `.sty` removed.

## [1.22] - 2026-05-25

### Added
- Stuart dynasty four-generation example.
- `abbrevparents` option for short names in parent chains.
- `lineage-parent` key for single-line ancestor chains.

## [1.0] - 2026-05-25

### Added
- Initial person registry with `\defineperson` and `\definepersonkv`.
- Generation computation from parent links with cycle detection.
- Main register entries via `\mainperson`.
- Child-list environments: `children`, `childrenof`, `\child`.
- Vital-record storage and retrieval (birth, death dates and places).
- Date formatting through `datetime2` with ISO validation.
- Index support via `imakeidx`.
- Cross-references with `\xrefperson`.
- Validation with `\checkperson` and `\checkregister`.

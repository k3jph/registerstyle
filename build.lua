-- Build configuration for nehgs-register
-- l3build.pdf for full documentation

module = "nehgs-register"

sourcefiledir = "source"
sourcefiles   = {"*.dtx", "*.ins"}
installfiles  = {"*.sty"}
unpackfiles   = {"*.ins"}

typesetfiles  = {"*.dtx"}
typesetsourcefiles = {"*.dtx"}

checkengines  = {"pdftex"}
stdengine     = "pdftex"

testfiledir   = "testfiles"

packtdszip    = true

ctanpkg       = "nehgs-register"
ctanzip       = ctanpkg .. "-" .. "1.0.2"

uploadconfig = {
  author      = "James P. Howard, II",
  ctanPath    = "/macros/latex/contrib/nehgs-register",
  description = "NEHGS-style genealogical register typesetting",
  license     = "lppl1.3c",
  pkg         = ctanpkg,
  summary     = "Typeset genealogical registers in the style of the New England Historic Genealogical Society",
  topic       = {"genealogy", "humanities"},
  version     = "1.0.2",
}

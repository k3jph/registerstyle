-- Build configuration for registerstyle
-- l3build.pdf for full documentation

module = "registerstyle"

sourcefiledir = "source"
sourcefiles   = {"*.dtx"}
installfiles  = {"*.sty"}
unpackfiles   = {"*.dtx"}

typesetfiles  = {"*.dtx"}
typesetsourcefiles = {"*.dtx"}

checkengines  = {"pdftex"}
stdengine     = "pdftex"

testfiledir   = "testfiles"

packtdszip    = true

ctanpkg       = "registerstyle"
ctanzip       = ctanpkg .. "-" .. "2.0"

uploadconfig = {
  author      = "James P. Howard, II",
  ctanPath    = "/macros/latex/contrib/registerstyle",
  description = "NEHGS-style genealogical register typesetting",
  license     = "lppl1.3c",
  pkg         = ctanpkg,
  summary     = "Typeset genealogical registers in the style of the New England Historic Genealogical Society",
  topic       = {"genealogy", "humanities"},
  version     = "2.0",
}

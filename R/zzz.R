
rdviPreamble <- paste(c("\\documentclass[12pt]{standalone}",
                        "\\begin{document}"),
                      collapse="\n")

rdviPostamble <- "\\end{document}"

.onLoad <- function(libname, pkgname) {
    initFontMap()
    initFontConfig()
    initLua()

    options(rdvi.preamble=rdviPreamble,
            rdvi.postamble=rdviPostamble,
            rdvi.initFonts=FALSE)
}


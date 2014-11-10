## reinstallAll
## :PROPERTIES:
## :header-args+: :tangle ./R/reinstallAll.R
## :END:
## re-install all packages installed in ~.libPaths()[1]~

## [[file:myTools.org::*reinstallAll][reinstallAll:1]]
reinstalAll <- function(
    lib.loc =  .libPaths()[1],
    type    = "source"
) {
    install.packages( 
        lib  = lib.loc,
        pkgs = as.data.frame(
            installed.packages(lib.loc),
            stringsAsFactors=FALSE
        )$Package,
        type = type
    )
}
## reinstallAll:1 ends here

## Local Variables:
## org-babel-tangled-file: t
## buffer-read-only: t
## eval:: (auto-revert-mode)
## End:

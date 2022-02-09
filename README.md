# splshiny <a href="https://docs.sykdomspulsen.no/splshiny"><img src="man/figures/logo.png" align="right" width="120" /></a>

## Overview 

[splshiny](https://docs.sykdomspulsen.no/splshiny) contains helpful functions for creating Shiny websites.

Read the introduction vignette [here](http://docs.sykdomspulsen.no/splshiny/articles/splshiny.html) or run `help(package="splshiny")`.

## splverse

<a href="https://docs.sykdomspulsen.no/packages"><img src="https://docs.sykdomspulsen.no/packages/splverse.png" align="right" width="120" /></a>

The [splverse](https://docs.sykdomspulsen.no/packages) is a set of R packages developed to help solve problems that frequently occur when performing infectious disease surveillance.

If you want to install the dev versions (or access packages that haven't been released on CRAN), run `usethis::edit_r_profile()` to edit your `.Rprofile`. 

Then write in:

```
options(
  repos = structure(c(
    FHI  = "https://folkehelseinstituttet.github.io/drat/",
    CRAN = "https://cran.rstudio.com"
  ))
)
```

Save the file and restart R.

You can now install [splverse](https://docs.sykdomspulsen.no/packages) packages from the FHI registry.

```
install.packages("splshiny")
```


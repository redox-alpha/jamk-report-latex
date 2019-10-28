# JAMK University of Applied Sciences Report Latex Class

**This is an unofficial template. You might lose points because of errors in
this template.**

This template is written according to project reporting instructions found
[here](http://oppimateriaalit.jamk.fi/projectreportinginstructions/7-appearance-of-the-thesis/)
and the Word template student Intranet (the template file requires a login for
some reason). This template includes some utility macros that makes adding
images a bit easier. I plan to add utility macros for tables and
bibliographical references as well. 


## Requirements

On Debian based systems install the following packages.

```bash
apt-get install texlive texlive-xetex texlive-latex-extra texlive-fonts-extra biber texlive-biber-extra
```
This template has to be compiled using `xelatex` or `lualatex` due to the font
stuff. This means that the `pdflatex` command doesn't work.

## Stuff

Compile with latexmk -pdf test.tex

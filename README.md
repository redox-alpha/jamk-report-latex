# JAMK University of Applied Sciences Report Latex Class

This template is written according to project reporting
instructions found
[here](http://oppimateriaalit.jamk.fi/projectreportinginstructions/7-appearance-of-the-thesis/)
and the Word template that found from student Intranet (the
template file requires a login for some reason).  The template
also includes some utility macros that makes adding images a bit
easier. I plan to add an utility macro for tables and
bibliographical references as well. 

So far, this class file has only been tested on Debian. The font
used is Carlito instead of Calibri, which might have to have to be
installed separately on Windows.

I threw this together in a few hours so expect breaking changes.
This class file doesn't implement everything detailed in the
reporting instructions yet.

Pull requests are welcome. If you have any issues or feature
requests, please create an issue.

## Requirements

On Debian based systems install the following packages.

```bash
apt-get install texlive texlive-latex-extra texlive-fonts-extra
```

## Macros

### Adding images

Creates an image with a caption and a label. Has an optional parameter for image width. The default width for an image `6in`. This might change in the near future. Place the image in `images/` folder which is located in the same folder as the class file (`jamk-report.cls`).

Add an image with default width:

```latex
\jamkfigure{example.png}{Caption text}{fig:example}
```

Add an image with custom width:
```latex
\jamkfigure[2in]{example.png}{Caption text}{fig:example}
```

Reference the image
```latex
\ref{fig:example}
```

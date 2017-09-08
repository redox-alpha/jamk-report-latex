# JAMK University of Applied Sciences Report Latex Class

**This is an unofficial template. You might lose points because of errors in
this template.**

This template is written according to project reporting instructions found
[here](http://oppimateriaalit.jamk.fi/projectreportinginstructions/7-appearance-of-the-thesis/)
and the Word template student Intranet (the template file requires a login for
some reason). This template includes some utility macros that makes adding
images a bit easier. I plan to add utility macros for tables and
bibliographical references as well. 

So far, this class file has only been tested on Debian. The font used is
**Carlito** instead of **Calibri**, which might have to have to be installed
separately on Windows. Other than the font thing, there is nothing that should
cause a problem on Windows or on Mac OS X.

I threw this together in a few hours so expect breaking changes.  This template
doesn't implement everything detailed in the reporting instructions yet.  Pull
requests are welcome. If you have any issues or feature requests, please create
an issue.

## Requirements

On Debian based systems install the following packages.

```bash
apt-get install texlive texlive-xetex texlive-latex-extra texlive-fonts-extra biber texlive-biber-extra
```
This template has to be compiled using `xelatex` or `lualatex` due to the font
stuff. This means that the `pdflatex` command doesn't work.

## Macros

### Adding images

`\jamkfigure` creates an image with a caption and a label. Has an optional
parameter for image width. The default width for an image is `6in`. This might
change in the near future. Place the image in `images/` folder which is located
in the same folder as the class file (`jamk-report.cls`).

Add an image with default width:

```latex
\jamkfigure
  {example.png}  % filename
  {Caption text} % caption
  {fig:example}  % label
```

Add an image with custom width:
```latex
\jamkfigure
  [2in]          % width (optional)
  {example.png}  % filename
  {Caption text} % caption
  {fig:example}  % label
```

Reference the image
```latex
\ref{fig:example}
```

### Adding tables

`\jamktable` creates a table with a caption and label for referencing. Requires
4 parameters.  The parameters are: caption, label, table layout and table
content. Table layout and contents follow regular Latex table rules (read more
about them [here](https://en.wikibooks.org/wiki/LaTeX/Tables)).

Here's an example:

```latex
\jamktable
    {Different types of dice}   % Caption
    {tbl:dicetypes}             % Label that is used to refence the table
    {l r l}                     % Table layout
    {
        % Table data
        \textbf{Type} & \textbf{Number of sides} & \textbf{Usage} \\
        D4      & 4     & Tabletop RPGs     \\
        D6      & 6     & Gambling, games...\\
        D10     & 10    & Tabletop RPGs     \\
        D20     & 20    & Tabletop RPGs     \\
        D100    & 100   & Tabletop RPGs     \\
    }
```

### Adding citations

`\jamkcite` creates a citation to a bibliographical reference defined
in `refs.bib`. Read more about bib files
[here](https://www.sharelatex.com/learn/Bibliography_management_in_LaTeX).
The class file takes care of everything, you just have to fill your references
to `refs.bib`. You use it like this:

```latex
\jamkcite{alabelinyourbibfile}
```

or like this if you need additional information (e.g. page number):

```latex
\jamkcite[p. 1-50]{alabelinyourbibfile}
```


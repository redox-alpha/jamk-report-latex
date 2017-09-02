\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jamk-report}[2017/09/02 JAMK Report]
\LoadClass[12pt]{article}

\usepackage[margin=2cm,left=4.3cm]{geometry}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage{sectsty}
\usepackage[parfill]{parskip}
\usepackage{fancyhdr}

% Titles
\usepackage{titlesec}
\titlespacing*{\section}{0pt}{0pt}{2em}

% Fonts
\usepackage{fontspec}
\setmainfont{Carlito}

% set paragraph linespacing to 1.5
\renewcommand{\baselinestretch}{1.5}

% set top header
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[R]{\thepage}

\sectionfont{\fontsize{18}{22}\selectfont}

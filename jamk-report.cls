\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jamk-report}[2017/09/02 JAMK Report]
\LoadClass[12pt]{article}

\usepackage[margin=2cm,left=4.3cm]{geometry}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage{sectsty}
\usepackage[parfill]{parskip}
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{caption}
\usepackage{setspace}

% Titles
\usepackage{titlesec}
\titlespacing*{\section}
	{0pt}
	{0pt}
	{2em}

%% Sub section formatting
\titleformat{\subsection}
	{\fontsize{14pt}{14pt}\normalfont}
	{\thesubsection}
	{2em}
	{}

%% sub sub sectoin formatting
\titleformat{\subsubsection}
	{\fontsize{13pt}{13pt}\normalfont}
	{\thesubsubsection}
	{2em}
	{}

% Fonts
\usepackage{fontspec}
\setmainfont{Carlito}

% set paragraph linespacing to 1.5
\renewcommand{\baselinestretch}{1.5}

% set top header
\setlength{\headheight}{14pt}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[R]{\thepage}

\sectionfont{\fontsize{18pt}{18pt}\selectfont}

\captionsetup[table]{
    font={stretch=2.0},
    justification=justified,
    singlelinecheck=false
}
\captionsetup[figure]{
    font={stretch=2.0},
    justification=justified,
    singlelinecheck=false
}

% Figure command
%% Takes 4 parameters. width, path to image, caption and reference name. Width is optional
\newcommand{\jamkfigure}[4][6in]{
    \vspace{1em}
	\begin{figure}[h]
		\includegraphics[width=#1]{#2}
		\caption{#3}
		\label{#4}
	\end{figure}
    \vspace{1em}
}

% Set path to graphics folder
\graphicspath{ {images/} }

% Table command
\newcommand{\jamktable}[4]{
    \vspace{1em}
    \begin{table}[h]
        \caption{#1}
        \begin{tabular}{ #3 }
            #4
        \end{tabular}
        \label{#2}
    \end{table}
    \vspace{1em}
}

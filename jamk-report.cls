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
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[R]{\thepage}

\sectionfont{\fontsize{18pt}{18pt}\selectfont}

\captionsetup{justification=justified,singlelinecheck=false}

% Figure command
%% Takes 2 parameters. Path to figure file and caption
%%
\newcommand{\jamkfigure}[3]{
	\begin{figure}[h]
		\includegraphics[width=5in]{#1}
		\caption{#2}
		\label{#3}
	\end{figure}
}

% Set path to graphics folder
\graphicspath{ {images/} }

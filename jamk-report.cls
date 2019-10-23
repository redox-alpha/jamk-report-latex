\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jamk-report}[2017/09/02 JAMK Report]
\RequirePackage{calc}
\RequirePackage[pass]{geometry}[2010/09/12 v5.6 Page Geometry]
\RequirePackage{babel}


\newif\if@grading

% Languages

\DeclareOption{finnish}{}
\DeclareOption{swedish}{}
\DeclareOption{english}{}

% other options

\DeclareOption{10pt}{\PassOptionsToClass{10pt}{article}}
\DeclareOption{11pt}{\PassOptionsToClass{11pt}{article}}

\ProcessOptions
\LoadClass[titlepage,a4paper,11pt]{article} %add titlepage later


\newcommand{\@university}{JAMK University of Applied Sciences}
\newcommand{\@faculty}{School of Technology}
\newcommand{\@department}{Department}
\newcommand{\@subject}{Cyber Stuff}
\newcommand{\@level}{dasf}
\newcommand{\@abstract}{}
\newcommand{\@city}{Helsinki}
\newcommand{\@dateofacceptance}{Date of acceptance}%
\newcommand{\@grade}{Grade}%



\newcommand{\@instructor}{Instructor}%
\newcommand{\@ccs}{ACM Computing Classification System (CCS):}%


\newcommand{\university}[1]{\renewcommand{\@university}{#1}}
\newcommand{\faculty}[1]{\renewcommand{\@faculty}{#1}}
\newcommand{\department}[1]{\renewcommand{\@department}{#1}}
\newcommand{\subject}[1]{\renewcommand{\@subject}{#1}}
\newcommand{\level}[1]{\renewcommand{\@level}{#1}}
\renewcommand{\abstract}[1]{\renewcommand{\@abstract}{#1}}


\newcommand{\lastpage}{%
  \label{lastpage}%
}



\newcommand\frontmatter{%
    \pagenumbering{roman}}
  
\newcommand\mainmatter{%
    \clearpage
    \pagenumbering{arabic}}




\newcommand{\@maketitle}{
\begin{titlepage}%
{
    \newgeometry{scale=0.7,marginratio={1:1, 1:1},ignoreall}
    \setlength{\parindent}{0pt}
    \newlength{\sideindent}%


    %\setlength{\sideindent}{\textwidth - 15mm - \widthof{\@dateofacceptance \@grade}}%
    \newlength{\lowerspace}%
    \setlength{\lowerspace}{0.6\textheight-3\baselineskip}%
    \large

  
    \vspace*{\fill}


    {\Large\bfseries \@title}

    \vspace{2\baselineskip}

    \@author

    \vspace{\lowerspace}

    \@level\\
    \@university\\
    \@department

    \vspace{2\baselineskip}

    \@city,\ \@date
    \restoregeometry

}
\end{titlepage}%

}

\AtBeginDocument{
    \@ifpackageloaded{hyperref}{
        \renewcommand{\maketitle}{
            \hypersetup{pageanchor=false}
            \@maketitle
            \hypersetup{pageanchor=true}
        }
    }
    {
        \renewcommand{\maketitle}{\@maketitle}
    }
}


%\usepackage[british]{babel}

%\setdefaultlanguage[variant=british]{english}

% bibliography
%\usepackage[british]{babel}

% Fonts
%\usepackage{fontspec}
%\setmainfont{Carlito}


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


% Table command
% Takes 4 parameters. Caption, reference name, table layout and table contents
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

%\newcommand{\jamkcite}[2][{}]{
%    (\cite[#1]{#2})
%}

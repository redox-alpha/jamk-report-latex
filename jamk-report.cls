\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jamk-report}[2017/09/02 JAMK Report]
\RequirePackage{calc}
\RequirePackage[pass]{geometry}[2010/09/12 v5.6 Page Geometry]
\RequirePackage{babel}
\RequirePackage{graphicx}
\RequirePackage[parfill]{parskip}


\newif\if@grading
\newif\if@lastpagecounter
\newif\if@useclassification
\@lastpagecountertrue

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
\newcommand{\@department}{IT Institute}
\newcommand{\@programme}{Degree programme in computers and stuff}
\newcommand{\@level}{Report}
\newcommand{\@lang}{English}
\newcommand{\@abstract}{}
\newcommand{\@supervisors}{}
\newcommand{\@assigned}{}


\newcommand{\@dateofacceptance}{Date of acceptance}%
\newcommand{\@grade}{Grade}%
\newcommand{\@numberofpagesinformation}{\numberofpages}


\newcommand{\@instructor}{Instructor}%
\newcommand{\@ccs}{ACM Computing Classification System (CCS):}%

\newcommand{\numberofpagesinformation}[1]{\renewcommand{\@numberofpagesinformation}{#1}}
\newcommand{\university}[1]{\renewcommand{\@university}{#1}}
\newcommand{\faculty}[1]{\renewcommand{\@faculty}{#1}}
\newcommand{\department}[1]{\renewcommand{\@department}{#1}}
\newcommand{\programme}[1]{\renewcommand{\@programme}{#1}}
\newcommand{\level}[1]{\renewcommand{\@level}{#1}}
\newcommand{\lang}[1]{\renewcommand{\@lang}{#1}}
\newcommand{\supervisors}[1]{\renewcommand{\@supervisors}{#1}}
\newcommand{\assigned}[1]{\renewcommand{\@assigned}{#1}}

\renewcommand{\abstract}[1]{\renewcommand{\@abstract}{#1}}


\newcommand{\lastpage}{%
  \label{lastpage}%
}

\newcommand{\numberofpages}{%
  \@ifundefined{r@lastpage}{0}{\pageref{lastpage}}%
}

\if@lastpagecounter
\AtEndDocument{%
    \lastpage
}
\fi


\newcommand\frontmatter{%
    \pagenumbering{roman}}
  
\newcommand\mainmatter{%
    \clearpage
    \pagenumbering{arabic}}


\newsavebox{\jamk} 
\savebox{\jamk}{\includegraphics[scale=0.3]{jamk.pdf}} 

\newsavebox{\jamks} 
\savebox{\jamks}{\includegraphics[scale=0.2]{jamk.pdf}} 


\newcommand{\abst@doctype}{\fontsize{12}{9}\bf\selectfont}
\newcommand{\abst@small}{\fontsize{11}{12}\selectfont}
\newcommand{\abst@tiny}{\fontsize{9}{10}\selectfont}
\newcommand{\abst@grandtitle}{\fontsize{22}{22}\bf\selectfont}
\newcommand{\abst@grandp}{\fontsize{14}{14}\selectfont}
\newcommand{\abst@title}{\fontsize{12}{12}\bf\selectfont}



\newcommand{\@maketitle}{
\begin{titlepage}%
{
    \thispagestyle{empty}
    \newgeometry{textwidth=580pt, textheight=845pt}
    \noindent
    \begin{picture}(580,845)
    \put(100,700){\usebox{\jamk}}

    \put(50,50){\textcolor[cmyk]{1,0.45,0.06,0.28}{\rule{30pt}{750pt}}} %Gamut weirdness(?)

    \put(115, 600){ %Prevent long titles from overflowing [fix indent?]
        \parbox[t]{380pt}{
        \noindent \abst@grandtitle\@title
        }
    }

    \put(120, 520){\makebox(100, 8)[l]{\abst@grandp\@author}}
    \put(120, 340){\makebox(100, 8)[l]{\abst@grandp\@level}}
    \put(120, 310){\makebox(100, 8)[l]{\abst@grandp\@faculty}}
    \put(120, 290){\makebox(100, 8)[l]{\abst@grandp\@department}}
    \put(120, 270){\makebox(100, 8)[l]{\abst@grandp\@programme}}

    \put(120, 240){\makebox(100, 8)[l]{\abst@grandp\@date}}

    \end{picture}
    \restoregeometry
    %\newpage
}
\end{titlepage}
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








% The English abstract

\newcommand{\makeabstract}{%
\thispagestyle{empty}
\newgeometry{textwidth=580pt, textheight=845pt}
\noindent
\begin{picture}(580,845)
\put(40,720){\usebox{\jamks}}


\put(58, 415){
    \parbox[t]{402pt}{
        \abst@small\setlength{\parindent}{2em}\noindent\@abstract
        
        \if@useclassification
          \vspace{2\baselineskip}
          \noindent \@ccs \\\@classification
        \fi
    }
}
\put(53,30){\framebox(462,700){}} % Main framing


% verticals

\put(240,610){\line(0,1){120}} %EB 
\put(380,610){\line(0,1){120}} %EB 

% horizontals

\put(380,690){\line(1,0){135}} %EB
\put(240,650){\line(1,0){275}} %EB 
\put(53,610){\line(1,0){462}}  %EB

\put(53,560){\line(1,0){462}}  %EB
\put(53,520){\line(1,0){462}}  %EB
\put(53,480){\line(1,0){462}}  %EB
\put(53,440){\line(1,0){462}}  %EB

\put(53,130){\line(1,0){462}}  %EB
\put(53,80){\line(1,0){462}}  %EB



\put(380,755){\makebox(150,6)[l]{\abst@doctype Description}}

% Field names

\put(58,720){\makebox(100,5)[l]{\abst@tiny Author(s)}}
\put(245,720){\makebox(100,5)[l]{\abst@tiny Type of publication}}
\put(385,720){\makebox(100,5)[l]{\abst@tiny Date}}


\put(385,680){\makebox(100,5)[l]{\abst@tiny Language of publication}}
\put(245,640){\makebox(100,5)[l]{\abst@tiny Number of pages}}
\put(385,640){\makebox(100,5)[l]{\abst@tiny Permission for web}}

\put(58,600){\makebox(100,5)[l]{\abst@tiny Title of publication}}
\put(58,550){\makebox(100,5)[l]{\abst@tiny Degree programme}}
\put(58,510){\makebox(100,5)[l]{\abst@tiny Supervisor(s)}}
\put(58,470){\makebox(100,5)[l]{\abst@tiny Assigned by}}


% Field values

\put(58,  705){\makebox(100, 8)[l]{\abst@small\@author}}
\put(245,  705){\makebox(100, 8)[l]{\abst@small\@level}}
\put(385, 705){\makebox(100, 8)[l]{\abst@small\@date}}

\iflanguage{finnish}{
    \renewcommand{\@lang}{Finnish}%
}


\put(385, 665){\makebox(100, 8)[l]{\abst@small\@lang}}
\put(245, 625){\makebox(100, 8)[l]{\abst@small\@numberofpagesinformation}}

\put(58,  585){\makebox(200, 8)[l]{\abst@title\@title}}
\put(58,  535){\makebox(200, 8)[l]{\abst@small\@programme}}
\put(58,  495){\makebox(200, 8)[l]{\abst@small\@supervisors}}
\put(58,  455){\makebox(200, 8)[l]{\abst@small\@assigned}}



\put(58,430){\makebox(150,5)[l]{\abst@tiny Abstract}}

\end{picture}
\restoregeometry
\newpage
}


% The English abstract

\newcommand{\makeabstractfin}{%
\thispagestyle{empty}
\newgeometry{textwidth=580pt, textheight=845pt}
\noindent
\begin{picture}(580,845)
\put(40,720){\usebox{\jamks}}


\put(58, 415){
    \parbox[t]{402pt}{
        \abst@small\setlength{\parindent}{2em}\noindent\@abstract
        
        \if@useclassification
          \vspace{2\baselineskip}
          \noindent \@ccs \\\@classification
        \fi
    }
}
\put(53,30){\framebox(462,700){}} % Main framing


% verticals

\put(240,610){\line(0,1){120}} %EB 
\put(380,610){\line(0,1){120}} %EB 

% horizontals

\put(380,690){\line(1,0){135}} %EB
\put(240,650){\line(1,0){275}} %EB 
\put(53,610){\line(1,0){462}}  %EB

\put(53,560){\line(1,0){462}}  %EB
\put(53,520){\line(1,0){462}}  %EB
\put(53,480){\line(1,0){462}}  %EB
\put(53,440){\line(1,0){462}}  %EB

\put(53,130){\line(1,0){462}}  %EB
\put(53,80){\line(1,0){462}}  %EB



\put(380,755){\makebox(150,6)[l]{\abst@doctype Kuvaus}}

% Field names

\put(58,720){\makebox(100,5)[l]{\abst@tiny Tekijä(t)}}
\put(245,720){\makebox(100,5)[l]{\abst@tiny Julkaisun laji}}
\put(385,720){\makebox(100,5)[l]{\abst@tiny Päivämäärä}}


\put(385,680){\makebox(100,5)[l]{\abst@tiny Julkaisun kieli}}
\put(245,640){\makebox(100,5)[l]{\abst@tiny Sivumäärä}}
\put(385,640){\makebox(100,5)[l]{\abst@tiny Verkkojulkaisulupa}}

\put(58,600){\makebox(100,5)[l]{\abst@tiny Työn nimi}}
\put(58,550){\makebox(100,5)[l]{\abst@tiny Tutkinto-ohjelma}}
\put(58,510){\makebox(100,5)[l]{\abst@tiny Työn ohjaaja(t)}}
\put(58,470){\makebox(100,5)[l]{\abst@tiny Toimeksiantaja(t)}}


% Field values

\put(58,  705){\makebox(100, 8)[l]{\abst@small\@author}}
\put(245,  705){\makebox(100, 8)[l]{\abst@small\@level}}
\put(385, 705){\makebox(100, 8)[l]{\abst@small\@date}}

\iflanguage{finnish}{
    \renewcommand{\@lang}{Suomi}%
}

\iflanguage{english}{
    \renewcommand{\@lang}{Englanti}%
}


\put(385, 665){\makebox(100, 8)[l]{\abst@small\@lang}}
\put(245, 625){\makebox(100, 8)[l]{\abst@small\@numberofpagesinformation}}

\put(58,  585){\makebox(200, 8)[l]{\abst@title\@title}}
\put(58,  535){\makebox(200, 8)[l]{\abst@small\@programme}}
\put(58,  495){\makebox(200, 8)[l]{\abst@small\@supervisors}}
\put(58,  455){\makebox(200, 8)[l]{\abst@small\@assigned}}



\put(58,430){\makebox(150,5)[l]{\abst@tiny Tiivistelmä}}

\end{picture}
\restoregeometry
\newpage
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

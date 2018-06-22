\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bookclub}

\LoadClass[10pt,article,twoside]{memoir}

\RequirePackage{xcolor}
\RequirePackage[protrusion, expansion,kerning,tracking,spacing]{microtype}
\RequirePackage[utf8]{inputenc}
\RequirePackage{libertine}
\RequirePackage{multicol}
\RequirePackage{framed}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{moreenum}
\RequirePackage{amssymb}

\DeclareOption{outline}{%
    \setenumerate[1]{label=\Roman*}%
    \setenumerate[0]{label=(\roman*)}%
    \newenvironment{mynotes}%
        {\begin{enumerate}[label=({\greek*})]}%
        {\end{enumerate}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax

\microtypecontext{spacing=nonfrench}
\nonfrenchspacing

%\linespread{1.23}

%\setlrmargins{*}{*}{1.618}
%\setulmargins{*}{*}{1.618}
%\settypeblocksize{7.5in}{*}{0.618}
%\checkandfixthelayout
\usepackage[margin=0.8in]{geometry}

%\counterwithout{section}{chapter}
%\linespread{2}
%
%\setlength{\parindent}{0pt}
%\setlength{\parskip}{.5\baselineskip}
%\setlength{\parfillskip}{0pt} % don't fill the last line
%\setlength{\emergencystretch}{0.1\textwidth} % not to get preposterously bad lines

\nouppercaseheads

\clearmark{section}
\makeatletter
\createmark{chapter}{right}{nonumber}{\@chapapp\ }{. \ }
\makeatother
\makepagestyle{mystyle}
%\makeevenhead{mystyle}{\excerptname}{Week \thechapter}{\excerptauthor}
%\makeoddhead{mystyle}{\excerptname}{Week \thechapter}{\excerptauthor}
\makeevenhead{mystyle}{}{}{}
\makeoddhead{mystyle}{}{}{}

\makeevenfoot{mystyle}{\thepage}{}{}
\makeoddfoot{mystyle}{}{}{\thepage}

%\makeheadrule{mystyle}{\textwidth}{1pt}
%\makefootrule{mystyle}{\textwidth}{1pt}{0in}

%\copypagestyle{chapter}{mystyle}
%\aliaspagestyle{part}{chapter}
%\aliaspagestyle{cleared}{chapter}

\pagestyle{mystyle}

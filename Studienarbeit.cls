\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Studienarbeit}

\LoadClass[12pt, a4paper]{article}

%--------------------------------------------------------------------------------------------------
% REQUIRED PACKAGES
%--------------------------------------------------------------------------------------------------
\RequirePackage[includeheadfoot=True,
%showframe
twoside,
bindingoffset=1cm,
head=1.5cm,
foot=1cm,
top=1.5cm,
bottom=1.5cm,
left=2.5cm,
right=2.5cm
]{geometry}

\RequirePackage{setspace}
\RequirePackage{parskip}
\RequirePackage[section]{placeins}
\RequirePackage{makecell} % line break in tabular environment
\RequirePackage{nameref} % reference the name of a label, not the number
\RequirePackage[newfloat]{minted} % For code snippets
\RequirePackage{etoolbox} % e-TeX Toolbox for Class and Package Authors
\RequirePackage{tcolorbox} % Box around code snippets
\RequirePackage{caption}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{tabularx}
\RequirePackage{listliketab}
\RequirePackage{enumitem}
\RequirePackage[export]{adjustbox}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage[
  backend=biber,
  bibencoding=utf8
]{biblatex}

\renewcommand{\cellalign}{tl}
\renewcommand{\baselinestretch}{1.5}

% short format for \today command
\newcommand{\leadingzero}[1]{\ifnum #1<10 0\the#1\else\the#1\fi} 
\newcommand{\todayshort}{\leadingzero{\day}.\leadingzero{\month}.\the\year} 
\newcommand*{\quelle}[1]{\par\raggedleft\footnotesize Quelle:~#1}

%\setlength{\parskip}{1em}
%\setlength{\parindent}{0cm}


%--------------------------------------------------------------------------------------------------
% TITLEPAGE
%--------------------------------------------------------------------------------------------------
\newcommand{\doctitle}{Title not defined}
\newcommand{\docdate}{Date not defined}

\newcommand{\maketitlepage}{
\begin{titlepage}
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
\center
\vspace*{1cm}
%\includegraphics[width=5cm]{Zimmer_Group.pdf}\\[2cm]
LOGO
\HRule \\[0.4cm]
\textsc{\Huge
\@title
}\\[1mm]
\HRule \\[1.5cm]
\LARGE \doctitle \\[1.5cm]
\Large \@author \\[0.5cm]
\Large \@date
\end{titlepage}
}


%--------------------------------------------------------------------------------------------------
% PAGE STYLE
%--------------------------------------------------------------------------------------------------
\renewcommand{\floatpagefraction}{.8}

\fancypagestyle{zpagestyle}{ 
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead{}
\fancyfoot{}
% left header
\fancyhead[L]{
%\includegraphics[width=3cm]{DHBW-Logo.pdf}% header
Logo Links
}

% center header
\fancyhead[C]{
\center
\vspace*{2mm}
}

% right header
\fancyhead[R]{
%\includegraphics[width=3cm]{Zimmer_Group.pdf}%
Logo Rechts
}
%--------------------------------------------------------------------------------------------------
% left footer
\fancyfoot[L]{
\footnotesize Autor: \@author
}

% center footer
\fancyfoot[C]{
\footnotesize Erstellt am: \@date
}

% right footer
\fancyfoot[R]{
{\thepage} von \pageref{LastPage}}
}
\pagestyle{zpagestyle}%

%--------------------------------------------------------------------------------------------------
% MINTED STYLE
%--------------------------------------------------------------------------------------------------
%\usemintedstyle{bw} %uncomment to use black and white style for printing
\newenvironment{code}{\captionsetup{type=listing}}{}
\SetupFloatingEnvironment{listing}{name=Quellcode}
%\setmintedinline{breaklines} % to break inline code at spaces if necessary (use breakanywhere as well if it should break anywhere)

\BeforeBeginEnvironment{minted}{\begin{tcolorbox}\setstretch{1.0}}%
\AfterEndEnvironment{minted}{\end{tcolorbox}}%\\
\let\oldInputminted\inputminted
\renewcommand{\inputminted}[2]{\begin{tcolorbox}\setstretch{1.0} \oldInputminted{#1}{#2} \end{tcolorbox}}


%--------------------------------------------------------------------------------------------------
% EMPTY CLEAR DOUBLE PAGE
%--------------------------------------------------------------------------------------------------
\def\emptycleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\thispagestyle{empty}%
\hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
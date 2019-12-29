%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                                                  %
%                                          DOCUMENTCLASS                                           %
%                                                                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Studienarbeit}

\LoadClass[12pt, a4paper]{article}

%--------------------------------------------------------------------------------------------------
% REQUIRED PACKAGES
%--------------------------------------------------------------------------------------------------
\RequirePackage[includeheadfoot=True,
%showframe,
twoside,
bindingoffset=1cm,
head=1.5cm,
foot=1cm,
top=1.5cm,
bottom=1.5cm,
left=2.5cm,
right=2.5cm
]{geometry}

\RequirePackage{setspace} % Provides support for setting the spacing between lines
\RequirePackage{parskip} % For parskip and parindent
\RequirePackage[section]{placeins} % Defines the FloatBarrier command
\RequirePackage{makecell} % Line break in tabular environment
\RequirePackage{nameref} % Reference the name of a label, not the number
\RequirePackage[newfloat]{minted} % For code snippets
\RequirePackage{etoolbox} % e-TeX Toolbox for Class and Package Authors
\RequirePackage{tcolorbox} % Box around code snippets
\RequirePackage{caption} % Caption for images and tables
\RequirePackage{fancyhdr} % Custom header and footer
\RequirePackage{lastpage} % Reference the number of pages is your document
\RequirePackage{tabularx} % tabularx environment
\RequirePackage{listliketab} % list-like tabulars
\RequirePackage{enumitem} % customizable list environment
\RequirePackage[export]{adjustbox} % adjust and resize boxes
\RequirePackage[nottoc]{tocbibind} % Disables the inclusion of the ToC
\RequirePackage[german]{babel} % Manages culturally-dertermined typographical rules
\RequirePackage{csquotes} % Advanced facilities for inline and display quotation
\RequirePackage[acronym, % acronyms and glossary
automake=immediate,
toc,
section=section]{glossaries} % automake=immediate to be able to print the glossary https://tex.stackexchange.com/questions/468818/glossaries-automake-not-working-lualatex
\RequirePackage{minted} % code highlighting with pygments
\RequirePackage{tikz} % graphics stuff
\usetikzlibrary{positioning} % positioning of tikz objects
\RequirePackage{graphicx} % Include images in the document
\RequirePackage{hyperref}% use option [hidelinks] to hide red boxes around links in PDF
\RequirePackage[
  backend=biber,
  bibencoding=utf8
]{biblatex} % bibliography


%--------------------------------------------------------------------------------------------------
% DEFINITIONS
%--------------------------------------------------------------------------------------------------
\newcommand{\projectname}{projectname not defined}

% short format for \today command
\newcommand{\leadingzero}[1]{\ifnum #1<10 0\the#1\else\the#1\fi} 
\newcommand{\todayshort}{\leadingzero{\day}.\leadingzero{\month}.\the\year} 
\newcommand*{\quelle}[1]{\par\raggedleft\footnotesize Quelle:~#1}


%--------------------------------------------------------------------------------------------------
% TITLEPAGE
%--------------------------------------------------------------------------------------------------
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
\LARGE \projectname \\[1.5cm]
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

% delete old header and footer
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
\footnotesize {\@title}, {\@author}
}

% center footer
\fancyfoot[C]{
{\thepage} von \pageref{LastPage}
}

% right footer
\fancyfoot[R]{
\footnotesize \@date
}
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

% tcolorbox around imported code
\let\oldInputminted\inputminted
\renewcommand{\inputminted}[2]{\begin{tcolorbox}\setstretch{1.0} \oldInputminted{#1}{#2} \end{tcolorbox}}


%--------------------------------------------------------------------------------------------------
% EMPTY CLEAR DOUBLE PAGE
%--------------------------------------------------------------------------------------------------
\def\emptycleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\thispagestyle{empty}%
\hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}


%--------------------------------------------------------------------------------------------------
% MISC
%--------------------------------------------------------------------------------------------------
\renewcommand{\cellalign}{tl}
\renewcommand{\baselinestretch}{1.5}

%\setlength{\parskip}{1em}
%\setlength{\parindent}{0cm}
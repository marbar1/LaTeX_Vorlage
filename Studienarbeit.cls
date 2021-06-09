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
%twoside,
bindingoffset=0.5cm,
head=1.5cm,
foot=1cm,
top=1.5cm,
bottom=1.5cm,
left=2.5cm,
right=2.5cm
]{geometry}
\RequirePackage{setspace} % Provides support for setting the spacing between lines
\RequirePackage{parskip} % For parskip and parindent
\RequirePackage[newfloat]{minted} % For code snippets and code highlighting with pygments
\RequirePackage{tcolorbox} % Box around code snippets
\RequirePackage[font=small, labelfont=bf, justification=raggedright]{caption} % Caption for images and tables
\RequirePackage{makecell} % Line break in tabular environment


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
%
% Don't forget to uncomment the 'twoside' option of the geometry package!
%--------------------------------------------------------------------------------------------------
\def\emptycleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\thispagestyle{empty}%
\hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}


%--------------------------------------------------------------------------------------------------
% MISC
%--------------------------------------------------------------------------------------------------
% Table cell height
\renewcommand{\cellalign}{tl}
\renewcommand{\baselinestretch}{1.5}
\renewcommand{\arraystretch}{1}

% short format for \today command
\newcommand{\leadingzero}[1]{\ifnum #1<10 0\the#1\else\the#1\fi}
\newcommand{\todayshort}{\leadingzero{\day}.\leadingzero{\month}.\the\year} 
\newcommand*{\quelle}[1]{\par\raggedleft\footnotesize Quelle:~#1}

% Create tocless Section (Section with number but not in the TOC) (\tocless\subsection{abc...})
\newcommand{\nocontentsline}[3]{}
\newcommand{\tocless}[2]{\bgroup\let\addcontentsline=\nocontentsline#1{#2}\egroup}

% Rename 'List of Listings' to 'Quellcodeverzeichnis'
\renewcommand{\listingname}{Quellcode}
\renewcommand{\listlistingname}{{\listingname}verzeichnis}

% set the emergencystrech to 3 em in case a long word or a mintinline element can be linebroken and a Badbox Message occurs. em stands for the fontsize so for example if the fontsize is 12 pt (12 pt = approx. 4.233mm) 3em would be 12.7mm
% more information: https://github.com/gpoore/minted/issues/31
\setlength{\emergencystretch}{3em}
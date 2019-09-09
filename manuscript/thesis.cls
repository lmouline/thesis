\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2019/03/22 v0.0 PhD Thesis]
\LoadClass[12pt, twoside]{book}

%%% Package dependencies %%%%%
\RequirePackage{diagbox}
\RequirePackage[table]{xcolor}
\RequirePackage{xifthen}
\RequirePackage[backref=true, style=trad-alpha, backend=biber, bibencoding=utf8]{biblatex}
\RequirePackage[]{hyperref}
\RequirePackage{indentfirst}
\RequirePackage{doi}
\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage[caption=false,font=footnotesize]{subfig}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage[T1]{fontenc}
\RequirePackage[final]{microtype}
\RequirePackage{lmodern}
\RequirePackage{bibentry}
\nobibliography*
\RequirePackage{pdfpages}
\RequirePackage{gensymb}
\RequirePackage{graphicx}
\RequirePackage{dsfont}
\RequirePackage{pifont}

%%% Class options %%%%%
%
% review, publish
%		these options are opposite: only one can be used at the same time. If both are used, publish option will be used.
%     publish option is set by default. It add a line number every 5 lines. Counting is restart for every pages
%    	review option add line numbers to every lines and increase the height of each lines.
%
% debug
%		show the different frames of the page (header, footer, main, notes)
%%%%%%%%%%%%%%%%

\newif\ifIFreview
\newif\ifIFpublish
\newif\ifIFdebug
\newif\ifIFglossary
\newif\ifIFwriting

\IFreviewfalse
\IFpublishtrue
\IFdebugfalse
\IFglossaryfalse

\DeclareOption{review}{
	\IFreviewtrue
	\IFpublishfalse
}
\DeclareOption{publish}{
	\IFreviewfalse
	\IFpublishtrue
}

\DeclareOption{debug}{
	\IFdebugtrue
}

\DeclareOption{glossary}{	
	\IFglossarytrue
}

\DeclareOption{writing}{
	\IFwritingtrue
}

\ProcessOptions\relax

\ifIFreview
	\RequirePackage[pagewise]{lineno}
		
	\RequirePackage{setspace}
	\onehalfspacing

\fi

\ifIFpublish
	\RequirePackage[pagewise, modulo]{lineno}
\fi

\ifIFdebug
	\RequirePackage{showframe}
\fi

\ifIFglossary
	\RequirePackage[toc, style=treenoname, subentrycounter, acronym]{glossaries}
	\makeglossaries
\fi

\ifIFwriting
	\RequirePackage{warning}
	\RequirePackage{refcheck}
	\RequirePackage{todonotes}
	\overfullrule=2cm
\fi

%%% Package dependencies 2 %%%%%
\RequirePackage{csquotes}

%%% Definition of the page layout %%%%%
\RequirePackage[headheight=15pt]{geometry} %with page borders size
\RequirePackage{fancyhdr} 
\pagestyle{fancy}
\fancyhf{} %remove all rules
\renewcommand{\headrulewidth}{0pt} % remove decorative line

\fancyfoot[C]{}
\fancyfoot[RO, LE]{\thepage} %page number on Right for Odd pages and Left for Even pages

\fancypagestyle{plain}{ %redefine rules for 1st chapter pages
	\fancyhf{} %remove all rules
	\fancyfoot[RO, LE]{\thepage}
}

%%% Definition of chapter header %%%%%
\RequirePackage[compact]{titlesec}
\RequirePackage{anyfontsize}
\RequirePackage[nohints]{minitoc}

\titleformat{\chapter}[display]
	{\bfseries\Large}
	{\vspace{-3cm}\filleft\fontsize{90}{0}\fontfamily{phv}\selectfont\textcolor{gray}{\thechapter}}
	{4ex}
	{\titlerule
	  \vspace{2ex}%
	  \filright}
	  [\vspace{2ex}%
	  \titlerule]


\RequirePackage{cleveref}
	  
%%% Remove spaces for item list %%%%%
\setlist[itemize]{noitemsep, nolistsep}


%%% Customized commands %%%%%
% backmatter
%		extends the backmatter of the book class with the following feature: add a clear double page, set page numbering to roman and print the glossary if any.
%
% highlightbox
%		add a black box around the text
%		1st param (optional): title of the box. It will be put in bold at the beginning of the text followed by colon and the text (2nd parameter)
%		2nd param: text to insert into the box 
%
% ie
%		aliast to write 'i.e.,' with italic font
%
% paragraphit
%		simulate the \paragraph command but with an italic header
%
% setGloassary
% 	initialize the glossary by setting the file that contains the entries and calling the "makeglossary" command
%
% chapterPage
%		setup the first page of a chapter with an abstract and a mini table of contents
%
%%%%%%%%%%%%%%%%
\let\OLDbackmatter\backmatter
\renewcommand{\backmatter}[0]
{
	\OLDbackmatter
	\cleardoublepage
	
	\pagenumbering{roman}
	
	\ifIFglossary
		\printglossary[type=main, nonumberlist]
		\cleardoublepage
		\printglossary[type=\acronymtype, title={Abbreviations}]
		
	\fi
	
	\renewcommand{\listfigurename}{List of figures}
	\phantomsection
	\addcontentsline{toc}{chapter}{List of publications and tools}
	\input{publications}
	
	\phantomsection
	\addcontentsline{toc}{chapter}{List of figures}
    \listoffigures
    
    \renewcommand{\listtablename}{List of tables}
    \phantomsection
    \addcontentsline{toc}{chapter}{List of tables}
    \listoftables
	
	\printbibliography[heading=bibintoc]
}

\renewcommand{\contentsname}{Table of Contents}

\newcommand{\chapterPage}[1]{
	\setcounter{minitocdepth}{1}
	\begin{samepage}
	\minitoc
	\end{samepage}
	\bigskip
	\textit{#1}
	\newpage
}

\newcommand{\highlightbox}[2][]
{
	\begin{center}
		\noindent\fbox{
			\parbox{0.966\textwidth}
			{
				\ifthenelse{\isempty{#1}}
				{}
				{\textbf{#1:}}
				#2
			}
		}
	\end{center}	
}

\newcommand{\ie}[0]{\textit{i.e., }}
\newcommand{\etc}[0]{\textit{etc.}}
\newcommand{\cf}[0]{\textit{cf. }}
\newcommand{\eg}[0]{\textit{e.g., }}
\newcommand{\etal}[0]{\textit{et al., }}

\newcommand{\paragraphit}[1]{\noindent\textit{#1}~~}

\let\OLDtableofcontents\tableofcontents
\renewcommand{\tableofcontents}[0]
{
	\dominitoc
	\OLDtableofcontents
}

%\renewcommand*{\backref}[1]{}
%\renewcommand*{\backrefalt}[4]{{\footnotesize [%
%    \ifcase #1 Not cited.%
%    \or Cited on page~#2%
%    \else Cited on pages #2%
%    \fi%
%]}}

%% Usage????
\makeatletter
\def\old@comma{,}
\catcode`\,=13
\def,{%
  \ifmmode%
    \old@comma\discretionary{}{}{}%
  \else%
    \old@comma%
  \fi%
}

%% Now refcheck is aware of \cref and \Cref
\newcommand{\refcheckize}[1]{%
  \expandafter\let\csname @@\string#1\endcsname#1%
  \expandafter\DeclareRobustCommand\csname relax\string#1\endcsname[1]{%
    \csname @@\string#1\endcsname{##1}\wrtusdrf{##1}}%
  \expandafter\let\expandafter#1\csname relax\string#1\endcsname
}
\makeatother

%% Glossary links in black and italic
%\renewcommand*{\glstextformat}[1]{\textcolor{black}{#1$^*$}}
\renewcommand*{\glstextformat}[1]{\textcolor{black}{#1}}



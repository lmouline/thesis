\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2019/03/22 v0.0 PhD Thesis]
\LoadClass[12pt, twoside]{book}

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

\IFreviewfalse
\IFpublishtrue
\IFdebugfalse

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

\ProcessOptions\relax

\ifIFreview
	\RequirePackage[pagewise]{lineno}
	\linenumbers
	
	\RequirePackage{setspace}
	\onehalfspacing

\fi

\ifIFpublish
	\RequirePackage[pagewise, modulo]{lineno}
	\linenumbers
\fi

\ifIFdebug
	\RequirePackage{showframe}
	\overfullrule=5pt
\fi


%%% Package dependencies %%%%%
\RequirePackage{xcolor}
\RequirePackage{xifthen}
\RequirePackage{csquotes}
\RequirePackage[colorlinks, backref=page]{hyperref}
\RequirePackage[toc, style=treenoname, subentrycounter]{glossaries}
\RequirePackage{indentfirst}
\RequirePackage{doi}
\RequirePackage{graphicx}

%%% Definition of the page layout %%%%%
\RequirePackage[left=3cm, right=3cm, headheight=15pt]{geometry} %with page borders size
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
	{\vspace{-2cm}\filleft\fontsize{90}{0}\fontfamily{phv}\selectfont\textcolor{gray}{\thechapter}}
	{4ex}
	{\titlerule
	  \vspace{2ex}%
	  \filright}
	  [\vspace{2ex}%
	  \titlerule]



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
% todo
%		add a red text starting with TODO
%%%%%%%%%%%%%%%%
\newif\ifIFglossary
\IFglossaryfalse

\let\OLDbackmatter\backmatter
\renewcommand{\backmatter}[0]
{
	\OLDbackmatter
	\cleardoublepage
	
	\pagenumbering{roman}
	
	\ifIFglossary
		\printglossaries
	\fi
	
	\bibliography{bib}
    \bibliographystyle{alphaurl}
    \addcontentsline{toc}{chapter}{Bibliography}
}

\renewcommand{\contentsname}{Table of Contents}

\newcommand{\chapterPage}[1]{
	\setcounter{minitocdepth}{1}
	\minitoc
	\bigskip
	\bigskip
	\bigskip
	\textbf{Abstract:}\textit{#1}
	\newpage
}

\newcommand{\highlightbox}[2][]
{
	\noindent\fbox{
		\parbox{0.969\textwidth}
		{
			\ifthenelse{\isempty{#1}}
			{}
			{\textbf{#1:}}
			#2
		}
	}	
}

\newcommand{\ie}[0]{\textit{i.e., }}
\newcommand{\etc}[0]{\textit{etc.}}
\newcommand{\cf}[0]{\textit{cf. }}

\newcommand{\paragraphit}[1]{\noindent\textit{#1}~~}

\newcommand{\enableGloassary}[0]
{
	\makeglossaries
	\IFglossarytrue
}

\let\OLDtableofcontents\tableofcontents
\renewcommand{\tableofcontents}[0]
{
	\dominitoc
	\OLDtableofcontents
}

\newcommand{\todo}[1]
{
	\textcolor{red}{{\em TODO}: \bf #1}
}

\renewcommand*{\backref}[1]{}
\renewcommand*{\backrefalt}[4]{{\footnotesize [%
    \ifcase #1 Not cited.%
    \or Cited on page~#2%
    \else Cited on pages #2%
    \fi%
]}}




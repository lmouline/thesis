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
\RequirePackage{color}
\RequirePackage{xifthen}
\RequirePackage{csquotes}
\RequirePackage{hyperref}


%%% Definition of the page layout %%%%%
\RequirePackage[left=3cm, right=3cm, headheight=15pt]{geometry} %with page borders size
\RequirePackage{fancyhdr} 
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt} % remove decorative line

\fancyfoot[C]{}
\fancyfoot[RO, LE]{\thepage} %page number on Right for Odd pages and Left for Even pages

\fancypagestyle{plain}{ %redefine rules for 1st chapter pages
	\fancyhf{} %remove all rules
	\fancyfoot[RO, LE]{\thepage}
}


%%% Customized commands %%%%%
% boxed
%		add a black box around the text
%		1st param (optional): title of the box. It will be put in bold at the beginning of the text followed by colon and the text (2nd parameter)
%		2nd param: text to insert into the box 
%
% paragraphit
%		simulate the \paragraph command but with an italic header
%
% todo
%		add a red text starting with TODO
%%%%%%%%%%%%%%%%
%\newenvironment{boxed}[0]
%{\parbox{0.969\textwidth}{}
%{}

\newcommand{\boxed}[2]
{
	\noindent\fbox{
		\parbox{0.969\textwidth}
		{
			\ifthenelse{\isempty{#2}}
			{#1}
			{\textbf{#1:} #2}
		}
	}	
}

\newcommand{\paragraphit}[1]{\noindent\textit{#1}~~}

\newcommand{\todo}[1]
{
	\textcolor{red}{{\em TODO}: \bf #1}
}
\newcommand{\ie}[0]{\textit{i.e., }}



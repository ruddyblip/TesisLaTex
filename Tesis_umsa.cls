%%% LaTeX-class-file{
%%%	filename	= "Tesis_umsa.cls",
%%%	version		= "5.0.3",
%%%	date		= "21 Enero 2021",
%%%	Escrito por	= "Ruddy Quispe Tapia",
%%%	email		= "<ruddyqt@gmail.com",
%%%
%%%	docstring	= "Este archivo proporciona una clase de 
%%%			       tesis para la Facultad de Ciencias 
%%%                Economicas de la Carrera de Economia
%%%                de la Universidad Mayor de San Andres
%%%                UMSA"
%%% }
%%%=======================================================
%%% Este archivo proporciona una clase de tesis para la 
%%% Universidad Mayor de San Andres "UMSA" de la Facultad de
%%% Ciencias Económicas y Financieras  de la   Carrera de
%%% de Economía. 
%%% Está destinado a ser utilizado con LaTeX-2e.
%%% 
%=====================================================
%=====================================================

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Opciones de Datos     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Definicion de las Variables
\def\lxdef{\long\xdef}
\def\@classname {Tesis_umsa} 
\gdef\@templateVersion{5.0.3}
\gdef\@templateDate{2021/21/02}
\gdef\@templateAuthor{Ruddy Quispe Tapia}
% Proporciona esta clase
\ProvidesClass{\@classname}[\@templateDate \@templateVersion \@templateAuthor]

\NeedsTeXFormat{LaTeX2e}

\LoadClass[12pt,oneside]{book}


%%%%%%%%%%%%
%Packages  %
%%%%%%%%%%%%

\RequirePackage{arev}
\RequirePackage{lmodern}
\RequirePackage{calc}
\RequirePackage[includeheadfoot]{geometry}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
%\RequirePackage{tocloft}
\RequirePackage{xkeyval}
\RequirePackage{anyfontsize}
%\RequirePackage[dvipsnames]{xcolor}
\usepackage[usenames, dvipsnames]{xcolor}
\RequirePackage[spanish]{babel}
\RequirePackage{mathtools}
\RequirePackage{lipsum}
\RequirePackage{array}
\RequirePackage{colortbl}
\RequirePackage{chemfig}
\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish]{babel} 
\RequirePackage{xparse}
\RequirePackage{graphicx}
\RequirePackage{longtable}
\RequirePackage{blindtext}
\RequirePackage{parskip}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{layout}
\RequirePackage{courier}
\RequirePackage{subcaption}
\RequirePackage{url}
\RequirePackage{hyperref}
\RequirePackage[table,figure]{totalcount}
\RequirePackage[titletoc]{appendix}
\RequirePackage{framed}
\RequirePackage{natbib}
\RequirePackage{microtype}
\RequirePackage[T1]{fontenc}
\RequirePackage{csquotes}
\RequirePackage{titlesec}
\RequirePackage{datetime2}
\RequirePackage{fancyhdr}
\RequirePackage{helvet}

\RequirePackage{tikz}
\RequirePackage{mathtools}
%====================================


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definición de las variables de Interés  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\lxdef \@logo           {logo}
\newcommand{\thesisLogoPath}[1]{\xdef\@logo{#1}}
\lxdef \@universityname 	{Universidad Mayor de San Andres}
\newcommand{\thesisUniversity}[1]{\xdef\@universityname{#1}}
\lxdef \@facultad 			{FCEF}
\newcommand{\thesisFacultad}[1]{\xdef\@facultad{#1}}
\lxdef \@carrera 			{Economia}
\newcommand{\thesisCarrera}[1]{\xdef\@carrera{#1}}
\lxdef \@thesisgrado 		{Tesis de Grado}
\newcommand{\thesisGrado}[1]{\xdef\@thesisgrado{#1}}
\lxdef \@thesismencion 		{Mencion Economia Financiera}
\newcommand{\thesisMencion}[1]{\xdef\@thesismencion{#1}}
\newcommand{\tutor}[1]{\newcommand{\thetutor}{#1}}
\newcommand{\relator}[1]{\newcommand{\theRelator}{#1}}
%-------------------------------------------- ----------
% ------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Formato Después de la Caratula   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\afterTitlePage}{
    % Margen del documento 
    % [3.5 cm => Insquierdo]
    % [2.5 cm => los otros lados]
    \newgeometry{
        %nohead, 
        headheight=5cm,
        headsep=0.5cm,
        footskip=1.2cm,
        top=25mm,
        bottom=2.5cm,
        right=25mm,
        left=35mm,
        marginparwidth=0cm,
        marginparsep=0cm
    }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Establecer el espaciado y restablecer la numeración     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \pagenumbering{roman}
            \setcounter{page}{2}
    % Establecer  espacio 
    \setstretch{1.5}    %% Justificado 1.5
    \setlength{\parindent}{0.5cm} % Sangria
    \clubpenalty = 10000
    \widowpenalty = 10000
    \displaywidowpenalty = 10000
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Formato de la  Caratula  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\beforeTitlePage}{
    % Margen de la Caratula. UoL guidelines 
    % [Isquierda >= 3cm], [otos lados > 2.5cm]
    \newgeometry{
        nohead, 
        top=30mm,
        bottom=25mm,
        right=30mm,
        left=35mm,
        marginparwidth=0cm,
        marginparsep=0cm
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Establecer caracteriscas de la Caratula  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\submissionStatement}{
    \setstretch{1.2}
    \@ifundefined{@submissiontext}{ {\em \color{mygray}
Tesis para optar al grado Académico de Licenciado en Economía }\\ 
        \vspace{1cm}}{\@submissiontext}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Título predeterminada de la caratula: Univ, Facultadad, Carrera %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       
\newcommand{\@titlepage}{
    \begin{titlepage}
    \topskip0pt
%   \vspace*{\fill}    
% Universidad / Facultad / Carrera
% ---------------------------------
    \makeatletter   
\centering{\fontsize{16}{0} {\textbf{\color{myblue}\@universityname}}} \\ \vspace{0.15cm}
\centering{\fontsize{14}{0} {\textbf{\color{myblue}\@facultad}}} \\ \vspace{0.8pt}
%%%%55555      
 				\begin{minipage}{11cm}
		        	\begin{center}
		            	{\fontsize{14}{0} {\textbf{\color{myblue}\@carrera}}} \vspace{0.25cm}
		            	 {\color{myblue}\hrule height 3pt}
  						 {\color{white}\hrule height 0.3mm }
    					 {\color{myurobilin}\hrule height 1.5pt}         
		        	\end{center}
	        	\end{minipage} 
	        	    % Logo 
                    \begin{center}
    					\includegraphics[height=3.5in]{\@logo}
 					\end{center}
 			        % Tesis de Grado y Mencion
 					{\fontsize{14.5}{0} {\textbf{\color{myblue}\@thesisgrado}}} \\	\vspace{.8cm}
 					{\fontsize{15}{0} {\textbf{\color{myblue}\@thesismencion}}} \\	\vspace{1cm}
		            % Titulo del Tema
 				\begin{minipage}{11cm}
		        	\begin{center}  
		        		{\large {\textbf{\color{myblue}\@title}}}	        
		        	\end{center}
	        	\end{minipage}
                  % Postulante/ Tutor / Relator
    {\@ifundefined{}{}{\\ \vspace{0.25cm} \@author} \par}\vspace{1.5cm}
		\begin{tabular}{ll}
			\textbf{\color{myblue} Postulante:} & \color{myblue}\@author\\
			\textbf{\color{myblue} Tutor:} & \color{myblue}\thetutor\\
			\textbf{\color{myblue} Relator:} & \color{myblue}\theRelator\\

		\end{tabular}
        \vspace{1.5cm} \\ 
        %
    {\footnotesize \submissionStatement \par}
       %% Fecha
		 \textbf{\color{myblue}{La Paz-Bolivia\\[0.1\baselineskip] \@date}}
      \vspace*{\fill}      
	\end{titlepage}
}
    %% El estilo predeterminado de la página: título, el logotipo.
    %-----------------------------------------------------------
\def \@defaultTitlePage {\@titlepage}
    %% Vamos a renovar el comando make title para que no tengamos que hacerlo
    %% Personalizado
\RenewDocumentCommand{\maketitle}{o}{%
    %% Función de llamada antes de la página de título
 \beforeTitlePage
    {\@defaultTitlePage}    
% Función de llamada para después de la página de título     
  \afterTitlePage
}

%%%%%%%%%%%%%%%%%%%
% Agradecimientos %
%%%%%%%%%%%%%%%%%%%

\newenvironment{Agradecimientos}%
   {\cleardoublepage\null \begin{center}%
   \bfseries \large \color{myblue} AGRADECIMIENTOS\end{center}}%
   {\vfill\null}

%%%%%%%%%%%%%%%%
% Dedicatoria  %
%%%%%%%%%%%%%%%%

\newenvironment{Dedicatoria}%
   {\cleardoublepage\null \begin{center}%
   \bfseries \large \color{myblue} DEDICATORIA\end{center}}%
   {\vfill\null}
   
%%%%%%%%%%%%
% Resumen  %
%%%%%%%%%%%%

\newenvironment{Resumen}%
   {\cleardoublepage\null \begin{center}%
   \bfseries \large \color{myblue} RESUMEN\end{center}}%
   {\vfill\null} 
 
%%%%%%%%%%%%%%%%%%%%%%%    
%  Figuras y cuadros   %
%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\tablename}{Cuadro}
\newcommand{\thesisTOF}{
    \iftotalfigures
        \cleardoublepage
        \listoffigures
    \fi
}

\newcommand{\thesisTOT}{
    \iftotaltables
        \cleardoublepage
        \listoftables
    \fi
}

%%%%%%%%%%%%%%%%%%
% Indice General %
%%%%%%%%%%%%%%%%%%
\newcommand{\thesisTables}{
    \cleardoublepage
    \renewcommand{\contentsname}{INDICE GENERAL}
    \setcounter{tocdepth}{3}
    {\setstretch{1.25}
        \tableofcontents
        \thesisTOF
        \thesisTOT
    }
    
    \setlength{\abovedisplayskip}{1pt}
    \setlength{\belowdisplayskip}{18pt}
 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Inicio de la  Tesis       %%       
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{tikz}
\usetikzlibrary{intersections}
\usetikzlibrary{positioning, shapes.misc}

% Encabezado y pie de Pagina
\usepackage{fancyhdr}
\fancyhf{} 
\fancyhead[R]{%
  \begin{tikzpicture}[
    node distance = 2mm,
    every node/.style={
      rounded rectangle,
      minimum size = 6mm,
      draw=myblue,
      fill=myblue,
      text = white,
      font=\small,
    },
    very thick,
  ]
  \node (author) [rounded rectangle west arc=none, align = left] {%
    \bf{ Universidad Mayor de San Andres}%
  };
  \end{tikzpicture}%
}
\fancyfoot[R]{%
  \begin{tikzpicture}[
    pagina/.style={
      circle,
      minimum size = 6mm,
      draw= myblue,
      fill = myblue,
      text = white,
    },
  ]
  \node (pagerino) [pagina] {\thepage};
  \end{tikzpicture}%
}

\fancyheadoffset[L]{\dimexpr\oddsidemargin+1in\relax}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\setlength{\headheight}{64pt}% valor sugerido por fancyhdr
\pagestyle{fancy}

\newcommand{\thesisBodyStart}{
    
    \@ifundefined{@headerturnoff}{}{
        \fancyhead[R]{\leftmark}
        \fancyfoot[R]{\thepage}
    }
    
    % se limpio la página para no numerar la última página
    \cleardoublepage
    % Se  establece la numeración de páginas las paginas 1,2,3. 
    \pagenumbering{arabic} 
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Titulo / Capitulos / Figuras / Titulos  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Modificacion de los capítulos en Mayúscula 
\renewcommand\@chapapp{\textls[10]{\MakeUppercase{\chaptername}}}

% Modificación de los "capítulos"
\titleformat{\chapter}[display]
  {\normalfont\sffamily\large\bfseries\color{myblue} \centering}
  {\chaptertitlename\ \thechapter}{-6pt}
  {\large}

%%%%%%%%%%%%%%%%%5 
% Section / Subsection // Subsubsection
%-------------------------------------
\newcommand*\@secondofsix[6]{#2}
\newcommand{\addtotitleformat}{%
  \@ifstar{\addtotitleformat@star}{\addtotitleformat@nostar}}
\newcommand\addtotitleformat@nostar[2]{%
  \PackageError{titlesec}{non starred form of \string\addtotitleformat\space not supported}{}}
\newcommand\addtotitleformat@star[2]{%
  \expandafter\expandafter\expandafter\expandafter
  \expandafter\expandafter\expandafter\def
  \expandafter\expandafter\expandafter\expandafter
  \expandafter\expandafter\expandafter\@currentsection@font
  \expandafter\expandafter\expandafter\expandafter
  \expandafter\expandafter\expandafter{%
    \expandafter\expandafter\expandafter\@secondofsix
       \csname ttlf@\expandafter\@gobble\string#1\endcsname}%
  \titleformat*{#1}{\@currentsection@font#2}%
}
% 
\addtotitleformat*{\section}{\large\color{myblue}}
\addtotitleformat*{\subsection}{\large\color{myblue}}
\addtotitleformat*{\subsubsection}{\large\color{myblue}}

\titlespacing*{\chapter}{0pt}{-30pt}{0pt} 
\titlespacing*{\section}{0pt}{12pt}{0pt}
\titlespacing*{\subsection}{0pt}{10pt}{0pt}
\titlespacing*{\subsubsection}{0pt}{10pt}{0pt}
\titlespacing*{\paragraph}{0pt}{3pt}{0pt}
\titlespacing*{\subparagraph}{0pt}{3pt}{0pt}


%%%%%%% 
\counterwithout{footnote}{chapter}
\counterwithout{figure}{chapter} 
\counterwithout{table}{chapter} 

% Definicion de Colores
\definecolor{myblue}{HTML}{004173}
\definecolor{myurobilin}{rgb}{0.88, 0.68, 0.13}
\definecolor{mysapphire}{rgb}{0.03, 0.15, 0.4}
\definecolor{mygray}{gray}{0.6}


% Hyperlink 
\hypersetup{
  colorlinks=true,
  linkcolor=myblue,
  urlcolor=myblue,
  citecolor=myblue
}

% Títulos de los gráficos y cuadros 
\RequirePackage[font={color=myblue,bf},figurename=Figura.,labelfont={it}]{caption}

% Bibliográfica
\addcontentsline{toc}{chapter}{BIBLIOGRAFÍA}

%Letra de la Tesis
\renewcommand{\familydefault}{\sfdefault}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%%

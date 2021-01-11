\ProvidesClass{friggeri-coverletter}[2012/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption{heros}{
  \def\@cv@fontface{texgyreheros}
}
\DeclareOption{alegreya}{
    \def\@cv@fontface{AlegreyaSans}
}
\DeclareOption{merriweather}{
    \def\@cv@fontface{MerriweatherSans}
}
\DeclareOption{nunito}{
    \def\@cv@fontface{Nunito}
}
\DeclareOption{roboto}{
    \def\@cv@fontface{Roboto}
}

\DeclareOption{noadress}{
    \def\@cv@adress{}
    \PassOptionsToClass{addrfield=false,backaddress=false,}{scrlttr2}
}
\DeclareOption{nocolors}{\def\@cv@nocolors{}}
\DeclareOption{print}{\def\@cv@print{}}

\ExecuteOptions{roboto}


\PassOptionsToClass{\CurrentOption,fontsize=11pt,%%          Schriftgroesse
%---------------------------------------------------------------------------
% Satzspiegel
   paper=letter,%%               Papierformat
%---------------------------------------------------------------------------
% Briefkopf und Anschrift
   fromphone=on,%%           Telefonnummer im Absender
   fromrule=off,%%           Linie im Absender (aftername, afteraddress)
   fromfax=off,%%            Faxnummer
   fromemail=on,%%           Emailadresse
   fromurl=off,%%            Homepage
   fromlogo=off,%%           Firmenlogo
   subject=beforeopening,%%  Plazierung der Betreffzeile
   locfield=narrow,%%        zusaetzliches Feld fuer Absender
   foldmarks=off,%%          Faltmarken setzen
   numericaldate=off,%%      Datum numerisch ausgeben
   refline=narrow,%%         Geschaeftszeile im Satzspiegel
}{scrlttr2}
\ProcessOptions\relax

\LoadClass{scrlttr2}


%%%%%%%%%%
% Colors %
%%%%%%%%%%

\RequirePackage{xcolor}

\definecolor{white}{RGB}{255,255,255}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}

\definecolor{chwebsitetur}{HTML}{4FB1BA}
\definecolor{friggerigreen}{HTML}{C2E15F}
\definecolor{friggeriorange}{HTML}{FDA333}
\definecolor{friggeripurple}{HTML}{D3A4F9}
\definecolor{friggerired}{HTML}{FB4485}
\definecolor{friggeriblue}{HTML}{6CE0F1}
\definecolor{friggeriyellowgreen}{HTML}{13B4CD}
\definecolor{friggeribrickred}{HTML}{8913CD}
\definecolor{friggerisepia}{HTML}{CD8913}
\definecolor{friggeribrown}{HTML}{A52A2A}

\ifdefined\@cv@print
  \colorlet{friggerigreen}{gray}
  \colorlet{friggeriorange}{gray}
  \colorlet{friggeripurple}{gray}
  \colorlet{friggeribrown}{gray}
  \colorlet{friggerired}{gray}
  \colorlet{friggeriblue}{gray}
  \colorlet{friggeriyellowgreen}{gray}
  \colorlet{friggeribrickred}{gray}
  \colorlet{friggerisepia}{gray}
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{gray}
  \colorlet{header}{white}
\fi
\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}

\def\colorPallete{{"friggeriblue","friggerired","friggeriorange","friggerigreen","friggeripurple","friggeribrown","friggeriyellowgreen","friggeribrickred"}}

\ifdefined\@cv@nocolors
  \colorlet{friggerigreen}{gray}
  \colorlet{friggeriorange}{gray}
  \colorlet{friggeripurple}{gray}
  \colorlet{friggeribrown}{gray}
  \colorlet{friggerired}{gray}
  \colorlet{friggeriblue}{gray}
  \colorlet{friggeriyellowgreen}{gray}
  \colorlet{friggeribrickred}{gray}
  \colorlet{friggerisepia}{gray}
\fi

%%%%%%%%%
% Vars  %
%%%%%%%%%
\RequirePackage[hidelinks]{hyperref}
\setkomavar{fromname}{\firstname{} \lastname} % Your name
\setkomavar{fromemail}[\href{mailto:\fromemail}]{\fromemail} % Your email address
\setkomavar{fromphone}[\href{tel:\fromephone}]{\fromephone} % Your phone number
\setkomavar{subject}{\headingfont\color{headercolor}\subjectline} % This is the bold text saying 'Cover Letter', remove it if you don't like it

%%%%%%%%%
% Fonts %
%%%%%%%%%
\RequirePackage[quiet]{fontspec}
\RequirePackage[math-style=TeX]{unicode-math}
\RequirePackage{fontawesome}
\RequirePackage{calc}

% \RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}
% 
% \newfontfamily\bodyfont[]{Helvetica Neue}
% \newfontfamily\thinfont[]{Helvetica Neue UltraLight}
% \newfontfamily\headingfont[]{Helvetica Neue Condensed Bold}
% 
% \defaultfontfeatures{Mapping=tex-text}
% \setmainfont[Mapping=tex-text, Color=textcolor]{Helvetica Neue Light}
% 
% \setmathfont{XITS Math}

%%% modified by Karol Kozioł for ShareLaTex use
%\RequirePackage[quiet]{fontspec}
%\RequirePackage[math-style=TeX]{unicode-math}

\newfontfamily\bodyfont
[Path=fonts/\@cv@fontface/,
BoldFont=\@cv@fontface-Bold.ttf,
ItalicFont=\@cv@fontface-Italic.ttf,
BoldItalicFont=\@cv@fontface-BoldItalic.ttf]
{\@cv@fontface-Regular.ttf}
\newfontfamily\thinfont[Path=fonts/\@cv@fontface/]{\@cv@fontface-Light.ttf}
\newfontfamily\headingfont[Path=fonts/\@cv@fontface/]{\@cv@fontface-Bold.ttf}

\defaultfontfeatures{Mapping=tex-text}
\setmainfont
[Mapping=tex-text, Color=textcolor,
Path=fonts/\@cv@fontface/,
BoldFont=\@cv@fontface-Bold.ttf,
ItalicFont=\@cv@fontface-Italic.ttf,
BoldItalicFont=\@cv@fontface-BoldItalic.ttf
]
{\@cv@fontface-Regular.ttf}

\setmathfont[Path=fonts/\@cv@fontface/]{\@cv@fontface-Regular.ttf}
%%%

%%%%%%%%%%%%%%%%%
% HEADER/FOOTER %
%%%%%%%%%%%%%%%%%

\RequirePackage{tikz}

\newcommand{\rolefont}{%
  \fontsize{14pt}{24pt}\selectfont%
  \thinfont%
  \color{white}%
}

\newcommand{\header}[3]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=fillheader, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box) at (current page.north){};
    \node [anchor=center] (name) at (box) {%
      \fontsize{40pt}{72pt}\color{header}%
      {\thinfont #1}{\bodyfont  #2}
    };
    \node [anchor=north] at (name.south) {%
      \fontsize{14pt}{24pt}\color{header}%
      \thinfont #3%
    };
  \end{tikzpicture}
  \vspace{2.5cm}
  \vspace{-2\parskip}
}

\newcommand{\footer}{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=fillheader, anchor=south, minimum width=\paperwidth, minimum height=4cm] (box) at (current page.south){};
    \node [anchor=center] (name) at (box) {%
      \scshape{\fontsize{16pt}{32pt}\color{header}\addfontfeature{Color=header}%
	{\faEnvelope} \usekomavar{fromemail} \textperiodcentered{} {\faPhone} \usekomavar{fromphone}}%
    };
    \node [anchor=north] at (name.south) {%
      \fontsize{10pt}{22pt}\color{header}\addfontfeature{Color=header}%
      \scshape{\renewcommand{\\}{\ {\textperiodcentered}\ }%
	\usekomavar{fromaddress}}%
    };
  \end{tikzpicture}
}


%%%%%%%%%%%%%
% Structure %
%%%%%%%%%%%%%
\RequirePackage{parskip}

\newcounter{colorCounter}
\def\@paragraphcolor#1#2#3{%
  {%
    \addfontfeature{Color=%
      \ifcase\value{colorCounter}%
        friggeriblue\or%
        friggerired\or%
        friggeriorange\or%
        friggerigreen\or%
        friggeripurple\or%
        friggeribrown\or%
        friggeriyellowgreen\or%
        friggeribrickred\or%
        friggerisepia\else%
        headercolor\fi%
    } #1#2#3%
  }%
  \stepcounter{colorCounter}%
}

\newcommand{\paragraph}[2]{
  {\@paragraphcolor #1 %
    #2%
  }
}

\pagestyle{empty}


%%%%%%%%%%%%%%%%
% OTHER TWEAKS %
%%%%%%%%%%%%%%%%

\ifdefined\@cv@adress
    \makeatletter
    \@setplength{sigbeforevskip}{\parskip}
    \@setplength{refvpos}{\useplength{toaddrvpos}}
    \@setplength{firstheadhpos}{3.05cm} % einzig relevant, gleicher Wert wie geometry
    \makeatother
\fi

\setlength{\parindent}{0pt} % Removes all indentation from paragraphs



%----------------------------------------------------------------------------------------
%  HEADER SECTION
%----------------------------------------------------------------------------------------

\setkomavar{firsthead}{\header{\firstname}{\lastname}{\jobposition}}

%----------------------------------------------------------------------------------------
%  FOOTER SECTION
%----------------------------------------------------------------------------------------

\setkomavar{firstfoot}{\footer}


%----------------------------------------------------------------------------------------
%  GRAPHICS
%----------------------------------------------------------------------------------------

\usepackage{graphicx}

# Spectral_clustering

% per compilarlo "xelatex tesi" PER 2 VOLTE!

% QUESTO PEZZO NON DOVREBBE ESSERE MODIFICATO

\documentclass[12pt,a4paper,oneside,openright]{book}
\usepackage{packages} % inserisce tutti le macro necessarie per il 
                        % funzionamento
\usepackage{frontesp} % modificare questo file per i diplomi e se si ha
                        % un solo correlatore

% LE FIGURE VANNO INSERITE CON ``\includegraphics[width=xxxcm]{file}'' 
% SENZA ESTENSIONE ALTRIMENTI NON SI RIESCE AD OTTENERE IL PDF!!!
% per convertire le figure (ps o eps) in PDF usare 
% epstopdf --outfile=pippo.pdf pippo.ps


\setstretch{1.3}  %interlinea, mettere 1 per singola da usarsi per le bozze!!!

\begin{document}

% DA QUI INIZIA LA PARTE DA MODIFICARE PER INSERIRE IL PROPRIO LAVORO

\title{Spectral clustering\\[5mm] e le sue applicazioni}
\providecommand{\autore}{Gianmarco Pepi}                        %candidato
\providecommand{\principaladviser}{Prof. Luca Gemignani}  %relatore

\providecommand{\annoacc}{2018--19}
\providecommand{\corso}{\uppercase{Biomedica}} % corso di laurea in ??



% genera la prima pagina

\titlep

% indica l'inizio della parte introduttiva
\frontmatter

%   \tableofcontents
   
%   \listofalgorithms

\clearpage

% indica l'inizio della parte centrale
\mainmatter
      \input{introd} % attenzione! guardare introd.tex per vedere come e' fatto
      \input{cap1}
      \input{cap2}
      

% da qui in poi \chapter genera un'appendice
\appendix
\renewcommand{\chaptermark}[1]{\markboth{{\appendixname}\ \thechapter.\hspace{1em}#1}{}}

     \input{app1}

\clearpage
\addcontentsline{toc}{chapter}{Bibliografia}
\bibliographystyle{abbrv}
\bibliography{tesid,public} % ATTENZIONE se
                            % non avete la variabile di ambiente BIBINPUTS
                            % correttamente impostata non vi trova tesid.bib !!

\cfoot{\emph{Finito di stampare il \today\/ utilizzando \LaTeXe}}
\end{document}























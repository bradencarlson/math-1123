LEC=-1
SEC=-1
SUBSEC=-1
SEC_NAME=""

lecture-${LEC}: lecture-${LEC}.tex 
	pdflatex -jobname lecture-${LEC} "\input{preamble.tex}\
		\begin{document}\
		\setcounter{section}{${SEC}}\
		\section{${SEC_NAME}}\
		\setcounter{subsection}{${SUBSEC}}\
		\input{lecture-${LEC}.tex}\
		\end{document}"

clean: 
	rm -f *.out *.toc *.log *.aux *.pdf

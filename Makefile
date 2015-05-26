SHELL := /bin/bash

all: resume

resume: resume.tex
	@pdflatex -interaction=nonstopmode resume.tex > .tmp || (cat .tmp; exit 1)
	@pdflatex -interaction=nonstopmode resume.tex > .tmp || (cat .tmp; exit 1)
	@scp resume.pdf host:~/Desktop/ > /dev/null
	@rm .tmp

clean:
	@rm -f resume.{aux,log,out,pdf,toc}

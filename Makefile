### Makefile
### $Id: Makefile,v 1.11 2011/01/17 14:13:29 tiago Exp $

### Makefile, modificado 2016/09/20 - by Anderson Almeida - IHC UFscar

all: uninstall IHC_Entrega01.dvi IHC_Entrega01.ps IHC_Entrega01.pdf clean

uninstall:
	rm -f IHC_Entrega01.pdf

IHC_Entrega01.dvi: IHC_Entrega01.tex
		latex  IHC_Entrega01
		bibtex IHC_Entrega01
		latex  IHC_Entrega01
		latex  IHC_Entrega01

IHC_Entrega01.ps: IHC_Entrega01.dvi
		dvips -Z -Pamz -Pcmz -Ppdf -G0 IHC_Entrega01.dvi -o IHC_Entrega01.ps

IHC_Entrega01.pdf: IHC_Entrega01.ps
		ps2pdf -dOptimize=true -dEmbedAllFonts=true -dPDFSETTINGS=/printer IHC_Entrega01.ps
		

pdf: IHC_Entrega01.ps
		ps2pdf -dOptimize=true -dEmbedAllFonts=true -dPDFSETTINGS=/printer IHC_Entrega01.ps


clean:
	rm -f core *.core *.log *.aux *.toc *.lo[fpta] *.blg \
	*.ind *.ilg *.idx *.glo *.gls *.out *~ *.backup *.ps *.dvi \
	*.bbl *.brf capitulos/*.aux

### Makefile ends here.


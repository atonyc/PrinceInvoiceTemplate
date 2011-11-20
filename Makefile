all: show

invoice.pdf: invoice.html style.css logo.png
	prince --javascript invoice.html

show: invoice.pdf
	xpdf invoice.pdf

clean:
	rm -f invoice.pdf

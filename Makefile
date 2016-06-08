all: cavtoreferat cdiplom #ctz
avtoreferat:
	texi2pdf avtoreferat.tex

diplom:
	texi2pdf pz.tex

tz:
	texi2pdf tz.tex

cdiplom:
	TEXINPUTS=./gost2-105:$(TEXINPUTS) $(MAKE) diplom
	TEXINPUTS=./gost2-105:$(TEXINPUTS) $(MAKE) diplom

ctz:
	TEXINPUTS=./gost2-105:$(TEXINPUTS) $(MAKE) tz
	TEXINPUTS=./gost2-105:$(TEXINPUTS) $(MAKE) tz

cavtoreferat:
	TEXINPUTS=./gost2-105:$(TEXINPUTS) $(MAKE) avtoreferat
	TEXINPUTS=./gost2-105:$(TEXINPUTS) $(MAKE) avtoreferat

rename:
	mv pz.pdf Пояснительная_записка_Клевцов.pdf
	mv tz.pdf Техническое_Задание_Клевцов.pdf
	mv anotate.pdf Анотация_к_ВРБ_Клевцов.pdf
	texi2pdf md.tex
	texi2pdf avtoreferat.tex
	texi2pdf nir.tex



